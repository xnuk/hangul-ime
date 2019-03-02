scriptencoding utf-8

" ------ CONFIGURATION STARTS HERE ------ {{{

let s:chosung_table = {
	\ 'j': 'ㄹ',
	\ 'l': 'ㄷ',
	\ 'u': 'ㅁ',
	\ 'y': 'ㅊ',
	\ ';': 'ㅍ',
	\ 'h': 'ㄴ',
	\ 'n': 'ㅇ',
	\ 'e': 'ㄱ',
	\ 'i': 'ㅈ',
	\ "'": 'ㅌ',
	\ 'k': 'ㅅ',
	\ 'm': 'ㅎ',
	\ 'o': 'ㅂ',
	\ '/': 'ㅋ',
	\ }

let s:moeum_table = {
	\ 'g': 'ㅕ',
	\ 'p': 'ㅓ',
	\ 'f': 'ㅐ',
	\ 's': 'ㅣ',
	\ 't': 'ㅏ',
	\ 'd': 'ㅡ',
	\ 'c': 'ㅔ',
	\ 'v': 'ㅗ',
	\ 'b': 'ㅜ',
	\ 'x': 'ㅛ',
	\ 'a': 'ㅠ',
	\ 'w': 'ㅑ',
	\ 'r': 'ㅖ',
	\ 'z': 'ㅢ',
	\ 'q': 'ㅒ',
	\ }

let s:moeum_helper_table = {
	\ '/': 'ㅗ',
	\ 'y': 'ㅜ',
	\ }

let s:moeum_compose_rules = {
	\ 'ㅗㅣ': 'ㅚ',
	\ 'ㅗㅏ': 'ㅘ',
	\ 'ㅗㅐ': 'ㅙ',
	\ 'ㅗㅓ': 'ㅝ',
	\ 'ㅗㅔ': 'ㅞ',
	\ 'ㅗㅜ': 'ㅟ',
	\ 'ㅗㅗ': 'ㅟ',
	\ 'ㅜㅣ': 'ㅟ',
	\ 'ㅜㅏ': 'ㅘ',
	\ 'ㅜㅐ': 'ㅙ',
	\ 'ㅜㅓ': 'ㅝ',
	\ 'ㅜㅔ': 'ㅞ',
	\ }

let s:batchim_table = {
	\ 'q': 'ㅅ',
	\ 'w': 'ㄹ',
	\ 'f': 'ㅂ',
	\ 'p': 'ㅌ',
	\ 'g': 'ㅋ',
	\ 'a': 'ㅇ',
	\ 'r': 'ㄴ',
	\ 's': 'ㅎ',
	\ 't': 'ㅍ',
	\ 'd': 'ㄷ',
	\ 'z': 'ㅁ',
	\ 'x': 'ㅆ',
	\ 'c': 'ㄱ',
	\ 'v': 'ㅈ',
	\ 'b': 'ㅊ',
	\ }

let s:batchim_compose_rules = {
	\ 'ㄱㄱ': 'ㄲ',
	\ 'ㄱㅅ': 'ㄳ',
	\ 'ㄴㅈ': 'ㄵ',
	\ 'ㄴㅎ': 'ㄶ',
	\ 'ㄹㄱ': 'ㄺ',
	\ 'ㄹㅁ': 'ㄻ',
	\ 'ㄹㅂ': 'ㄼ',
	\ 'ㄹㅅ': 'ㄽ',
	\ 'ㄹㅌ': 'ㄾ',
	\ 'ㄹㅍ': 'ㄿ',
	\ 'ㄹㅎ': 'ㅀ',
	\ 'ㅂㅅ': 'ㅄ',
	\ }

" ------ CONFIGURATION ENDS HERE ------ }}}


let s:to_ssang = {
	\ 'ㄱ': 'ㄲ',
	\ 'ㄷ': 'ㄸ',
	\ 'ㅅ': 'ㅆ',
	\ 'ㅈ': 'ㅉ',
	\ 'ㅂ': 'ㅃ',
	\ }


let s:jaeum_syll = {
	\ 'ㄱ': '가',
	\ 'ㄲ': '까',
	\ 'ㄴ': '나',
	\ 'ㄷ': '다',
	\ 'ㄸ': '따',
	\ 'ㄹ': '라',
	\ 'ㅁ': '마',
	\ 'ㅂ': '바',
	\ 'ㅃ': '빠',
	\ 'ㅅ': '사',
	\ 'ㅆ': '싸',
	\ 'ㅇ': '아',
	\ 'ㅈ': '자',
	\ 'ㅉ': '짜',
	\ 'ㅊ': '차',
	\ 'ㅋ': '카',
	\ 'ㅌ': '타',
	\ 'ㅍ': '파',
	\ 'ㅎ': '하',
	\ }

" Dictionary<string, number>
" which number is evaluated as `char2nr(value) - 44032`
let s:batchim_syll = {
	\ 'ㄱ': '각',
	\ 'ㄲ': '갂',
	\ 'ㄳ': '갃',
	\ 'ㄴ': '간',
	\ 'ㄵ': '갅',
	\ 'ㄶ': '갆',
	\ 'ㄷ': '갇',
	\ 'ㄹ': '갈',
	\ 'ㄺ': '갉',
	\ 'ㄻ': '갊',
	\ 'ㄼ': '갋',
	\ 'ㄽ': '갌',
	\ 'ㄾ': '갍',
	\ 'ㄿ': '갎',
	\ 'ㅀ': '갏',
	\ 'ㅁ': '감',
	\ 'ㅂ': '갑',
	\ 'ㅄ': '값',
	\ 'ㅅ': '갓',
	\ 'ㅆ': '갔',
	\ 'ㅇ': '강',
	\ 'ㅈ': '갖',
	\ 'ㅊ': '갗',
	\ 'ㅋ': '갘',
	\ 'ㅌ': '같',
	\ 'ㅍ': '갚',
	\ 'ㅎ': '갛',
	\ }

let s:syll_batchim = {}

" Why the linter complains this
for [k, v] in items(s:batchim_syll)
	let s:syll_batchim[v] = k
	let s:batchim_syll[k] = char2nr(v) - 44032
	unlet k v
endfor

let s:state = ''

function! ime_hangul#handler (matchobj, trigger)
	let l:m1 = 1 < len(a:matchobj) ? a:matchobj[1] : ''
	let l:m2 = 2 < len(a:matchobj) ? a:matchobj[2] : ''
	let l:m3 = 3 < len(a:matchobj) ? a:matchobj[3] : ''

	if has_key(s:chosung_table, a:trigger)
		\ && !(s:state ==# '' && has_key(s:moeum_helper_table, a:trigger))
		let s:state = ''
		let l:j = s:chosung_table[a:trigger]

		if l:m2 == l:j && has_key(s:to_ssang, l:m2)
			return [s:to_ssang[l:m2]]
		elseif l:m1 == l:j && has_key(s:to_ssang, l:m1)
			return [s:to_ssang[l:m1]]
		endif

		return [l:m1 . l:m2 . l:m3 . l:j]

	elseif s:state ==# '' && l:m2 !=# ''
			\ && has_key(s:jaeum_syll, l:m2)
			\ && has_key(s:moeum_helper_table, a:trigger)

		let s:state = 'moeum_johab'

		" char2nr('ㅏ') == 12623
		let l:j = char2nr(s:moeum_helper_table[a:trigger]) - 12623
		return [nr2char(char2nr(s:jaeum_syll[l:m2]) + l:j*28)]

	elseif s:state ==# '' && l:m2 !=# ''
			\ && has_key(s:jaeum_syll, l:m2)
			\ && has_key(s:moeum_table, a:trigger)

		let s:state = 'batchim'

		" char2nr('ㅏ') == 12623
		let l:j = char2nr(s:moeum_table[a:trigger]) - 12623
		return [nr2char(char2nr(s:jaeum_syll[l:m2]) + l:j*28)]

	elseif s:state ==# 'moeum_johab' && l:m3 !=# ''
				\ && has_key(s:moeum_table, a:trigger)

		let s:state = 'batchim'

		let l:j = s:moeum_table[a:trigger]
		let l:z = char2nr(l:m3)
		let l:moeum_index = ((l:z - 44032) / 28) % 21

		" char2nr('ㅏ') == 12623
		let l:key = nr2char(l:moeum_index + 12623) . l:j
		if has_key(s:moeum_compose_rules, l:key)
			return [nr2char(
					\ l:z - l:moeum_index * 28 +
					\ (char2nr(s:moeum_compose_rules[l:key]) - 12623) * 28
				\ )]
		endif

		return [l:m3 . l:j]

	elseif l:m3 !=# ''
			\ && has_key(s:batchim_table, a:trigger)
			\ && has_key(s:batchim_syll, s:batchim_table[a:trigger])

		let l:j = s:batchim_table[a:trigger]
		let l:j_index = s:batchim_syll[l:j]

		let l:z = char2nr(l:m3)
		let l:bat = (l:z - 44032) % 28

		if l:bat == 0
			return [nr2char(l:z + l:j_index)]
		endif

		let l:key = s:syll_batchim[nr2char(44032 + l:bat)] . l:j
		if has_key(s:batchim_compose_rules, l:key)
			let l:q = s:batchim_compose_rules[l:key]
			if has_key(s:batchim_syll, l:q)
				return [nr2char(l:z - l:bat + s:batchim_syll[l:q])]
			endif
		endif
		return [l:m3 . a:trigger]

	elseif has_key(s:moeum_table, a:trigger)
		return [l:m1 . l:m2 . l:m3 . s:moeum_table[a:trigger]]

	else
		return []
	endif
endfunction

function! ime_hangul#info ()
	return {
	\ 'type': 'standalone',
	\ 'icon': '[가]',
	\ 'description': 'Hangul input mode',
	\ 'pattern': '\v%(([,;a-z]*)|([ㄱ-ㅎ])|([가-힣]))$',
	\ 'handler': function('ime_hangul#handler'),
	\ 'trigger': split('abcdefghijklmnopqrstuvwxyzG;''1234567890/', '\zs'),
	\ }
endfunction
