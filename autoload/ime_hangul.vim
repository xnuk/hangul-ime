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
	\ 'o': 'ㅌ',
	\ 'k': 'ㅅ',
	\ 'm': 'ㅎ',
	\ ',': 'ㅂ',
	\ '0': 'ㅋ',
	\ }

let s:chosung_compose_rules = {
	\ 'ㄱㄱ': 'ㄲ',
	\ 'ㄷㄷ': 'ㄸ',
	\ 'ㅅㅅ': 'ㅆ',
	\ 'ㅈㅈ': 'ㅉ',
	\ 'ㅂㅂ': 'ㅃ',
	\ }

let s:moeum_table = {
	\ 'f': 'ㅕ',
	\ 'p': 'ㅓ',
	\ 'g': 'ㅐ',
	\ 's': 'ㅣ',
	\ 't': 'ㅏ',
	\ 'd': 'ㅡ',
	\ 'c': 'ㅔ',
	\ 'v': 'ㅗ',
	\ 'b': 'ㅜ',
	\ '4': 'ㅛ',
	\ '5': 'ㅠ',
	\ '6': 'ㅑ',
	\ '7': 'ㅖ',
	\ '8': '_ㅗ',
	\ '9': '_ㅜ',
	\ '/': 'ㅢ',
	\ 'G': 'ㅒ',
	\ }

let s:moeum_compose_rules = {
	\ '_ㅗㅣ': 'ㅚ',
	\ '_ㅗㅏ': 'ㅘ',
	\ '_ㅗㅐ': 'ㅙ',
	\ '_ㅗㅓ': 'ㅝ',
	\ '_ㅗㅔ': 'ㅞ',
	\ '_ㅜㅣ': 'ㅟ',
	\ '_ㅜㅏ': 'ㅘ',
	\ '_ㅜㅐ': 'ㅙ',
	\ '_ㅜㅓ': 'ㅝ',
	\ '_ㅜㅔ': 'ㅞ',
	\ }

let s:batchim_table = {
	\ '1': 'ㄷ',
	\ '2': 'ㅆ',
	\ '3': 'ㅂ',
	\ 'q': 'ㅅ',
	\ 'w': 'ㄹ',
	\ 'f': 'ㅈ',
	\ 'p': 'ㅊ',
	\ 'a': 'ㅇ',
	\ 'r': 'ㄴ',
	\ 's': 'ㅎ',
	\ 't': 'ㅍ',
	\ 'z': 'ㅁ',
	\ 'x': 'ㄱ',
	\ 'c': 'ㅌ',
	\ 'v': 'ㅋ',
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


let s:initials = [
	\ 'ㄱ', 'ㄲ', 'ㄴ', 'ㄷ', 'ㄸ', 'ㄹ', 'ㅁ', 'ㅂ',
	\ 'ㅃ', 'ㅅ', 'ㅆ', 'ㅇ', 'ㅈ', 'ㅉ', 'ㅊ', 'ㅋ',
	\ 'ㅌ', 'ㅍ', 'ㅎ' ]

" Dictionary<string, number>
" which number is evaluated as `char2nr(value) - 44032`
let s:batchims = [
	\ 'ㄱ', 'ㄲ', 'ㄳ', 'ㄴ', 'ㄵ', 'ㄶ', 'ㄷ', 'ㄹ',
	\ 'ㄺ', 'ㄻ', 'ㄼ', 'ㄽ', 'ㄾ', 'ㄿ', 'ㅀ', 'ㅁ',
	\ 'ㅂ', 'ㅄ', 'ㅅ', 'ㅆ', 'ㅇ', 'ㅈ', 'ㅊ', 'ㅋ',
	\ 'ㅌ', 'ㅍ', 'ㅎ' ]

let s:batchim_start_index = 0x11A8
let s:medial_start_index = 0x1161

let s:syll_batchim = {}

" Why the linter complains this
" for [k, v] in items(s:batchim_syll)
" 	let s:syll_batchim[v] = k
" 	let s:batchim_syll[k] = char2nr(v) - 44032
" 	unlet k v
" endfor

" >>> s:consonant_to_batchim('ㄱ')
" "\u11A8"
" >>> s:consonant_to_batchim('ㅎ')
" "\u11C2"
function s:consonant_to_batchim(consonant)
	let l:i = index(s:batchims, a:consonant)
	if l:i < 0
		return ''
	else
		return nr2char(s:batchim_start_index + l:i)
	endif
endfunction

" >>> s:vowel_to_medial('ㅏ')
" "\u1161"
" >>> s:vowel_to_medial('ㅣ')
" "\u1175"
function s:vowel_to_medial(vowel)
	return nr2char(char2nr(a:vowel) - 0x314F + s:medial_start_index)
endfunction

let s:state = ''

let s:pattern = '\v%('
		\ . '([ㄱ-ㅎ])' . '|'
		\ . '([\u1161-\u1175])?([ㅏ-ㅣ])([\u11A8-\u11C2])?' . '|'
		\ . '([\u11A8-\u11C2])' . '|'
		\ . '([가-힣])'
	\ . ')$'

function! ime_hangul#handler(matchobj, trigger)
	let l:match_start         = 1 < len(a:matchobj) ? a:matchobj[1] : ''
	let l:match_medial        = 2 < len(a:matchobj) ? a:matchobj[2] : ''
	let l:match_medial_helper = 3 < len(a:matchobj) ? a:matchobj[3] : ''
	let l:match_end           = 4 < len(a:matchobj) ? a:matchobj[4] : ''
	let l:match_complete      = 5 < len(a:matchobj) ? a:matchobj[5] : ''
endfunction

function! ime_hangul#handler(matchobj, trigger)
	let l:m1 = 1 < len(a:matchobj) ? a:matchobj[1] : ''
	let l:m2 = 2 < len(a:matchobj) ? a:matchobj[2] : ''
	let l:m3 = 3 < len(a:matchobj) ? a:matchobj[3] : ''

	if has_key(s:chosung_table, a:trigger)
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
	\ 'pattern': s:pattern,
	\ 'handler': function('ime_hangul#handler'),
	\ 'trigger': split('abcdefghijklmnopqrstuvwxyzG;,1234567890/', '\zs'),
	\ }
endfunction
