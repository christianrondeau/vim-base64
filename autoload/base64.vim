function! base64#encode(input)
	if has("unix")
		let l:output = system('base64 --wrap=0', a:input)
	elseif has("win32")
		let l:output = system('python -m base64', a:input)
	else
		echoerr "Unknown OS"
	endif
	echom l:output
	let l:output = substitute(l:output, '[\n\%x00]', '', 'g')
	return l:output
endfunction

function! base64#decode(input)
	if has("unix")
		return system('base64 --decode --wrap=0 --ignore-garbage', a:input)
	elseif has("win32")
		return system('python -m base64 -d', a:input)
	else
		echoerr "Unknown OS"
	endif
endfunction

