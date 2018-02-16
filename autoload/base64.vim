function! base64#strip(value)
	return substitute(a:value, '\n$', '', 'g')
endfunction

function! base64#encode(input)
	if has("macunix")
		return base64#strip(system('base64', a:input))
	elseif has("unix")
		return base64#strip(system('base64 --wrap=0', a:input))
	elseif has("win32")
		return base64#strip(system('python -m base64', a:input))
	else
		echoerr "Unknown OS"
	endif
endfunction

function! base64#decode(input)
	if has("macunix")
		return base64#strip(system('base64 --decode', a:input))
	elseif has("unix")
		return base64#strip(system('base64 --decode --wrap=0 --ignore-garbage', a:input))
	elseif has("win32")
		return base64#strip(system('python -m base64 -d', a:input))
	else
		echoerr "Unknown OS"
	endif
endfunction

function! base64#v(fn)
	" Preserve line breaks
	let l:paste = &paste
	set paste
	" Reselect the visual mode text
	normal! gv
	" Apply transformation to the text
	execute "normal! c\<c-r>=base64#" . a:fn . "(@\")\<cr>\<esc>"
	" Select the new text
	normal! `[v`]h
	" Revert to previous mode
	let &paste = l:paste
endfunction

function! base64#v_atob()
	call base64#v("decode")
endfunction

function! base64#v_btoa()
	call base64#v("encode")
endfunction

