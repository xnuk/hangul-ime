#!/usr/bin/perl
use strict;
use warnings;
use v5.24;

use File::Temp qw/tempdir/;
use File::Basename qw/basename/;
use File::Spec::Functions qw/catfile/;

my ($filename) = @ARGV;

my $tempdir = tempdir(CLEANUP => 1);
my $tmpfile = catfile($tempdir, $filename ? basename($filename) : 'stdin.vim');

open(my $fh, '+>', $tmpfile);

my @a = ();
my @tests = ();

my $successful_read = 0;

while (<>) {
	$successful_read = 1;

	print $fh $_;
	chomp;
	if (s/^" >>> //) {
		push @a, $_;
		next;
	}

	if (s/^" // && @a) {
		my $test = pop @a;
		my $expect = $_;
		my $safe_test = $test =~ s/'/''/gr;
		my $safe_expect = $expect =~ s/'/''/gr;
		push @a, "call s:test_helper('$safe_test', '$safe_expect')";
		push @tests, join("\n",@a);
	}

	@a = ()
}

die 'Unable to read file or stdin.' unless ($successful_read);

say $fh q{
if v:errmsg !=# ""
	throw "Sourcing was unsuccessful. Giving up"
endif

function s:test_helper(test, expect)
	let l:test_status = 'FAIL'
	let l:test_message = ''
	try
		execute 'let l:test_expect=' . a:expect
		execute 'let l:test_actual=' . a:test
		if type(l:test_actual) ==# type(l:test_expect)
			\ && l:test_actual ==# l:test_expect
			let l:test_status = 'OK'
		else
			throw 'EXPECT: ' . l:test_expect . "\nACTUAL: " . l:test_actual
		endif
	catch /^EXPECT: /
		let l:test_status = 'FAIL'
		let l:test_message = v:exception
	catch /.*/
		let l:test_status = 'FAIL'
		let l:test_message = 'EXPECT: ' . a:expect . "\nERROR: " . v:exception
	endtry

	let l:test_echo = 'TEST ' . l:test_status . ': ' . a:test . "\n"

	if l:test_message !=# ''
		let l:indent = '  '
		let l:test_echo .= l:indent
			\ . substitute(l:test_message, '\n', "\n" . l:indent, 'g')
			\ . "\n"
	endif

	echo l:test_echo
endfunction
};

say $fh join("\n\n", @tests);

close $fh;

my $safe_tmpfile = $tmpfile =~ s/([\\%#'])/\\$1/gr;
print `nvim --cmd ':source $safe_tmpfile' --cmd ':q' --headless /dev/null`
