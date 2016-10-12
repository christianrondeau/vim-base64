function! base64#encode(input)
	if has("unix")
		return system('base64 --decode --wrap=0', a:input)
	elseif has("win32")
		let l:output = system('python -m base64', a:input)
		let l:output = substitute(l:output, '[\n\%x00]', '', 'g')
		return l:output
	else
		echoerr "Unknown OS"
	endif
endfunction

function! base64#decode(input)
	if has("unix")
		return system('base64 --decode --wrap=0', a:input)
	elseif has("win32")
		return system('python -m base64 -d', a:input)
	else
		echoerr "Unknown OS"
	endif
endfunction

