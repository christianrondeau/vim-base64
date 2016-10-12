if has("unix")
	vnoremap <silent> <leader>btoa c<c-r>=system('base64 --decode --wrap=0', @")<cr><esc>`[v`]h
	vnoremap <silent> <leader>atob c<c-r>=system('base64 --wrap=0', @")<cr><esc>`[v`]h
elseif has("win32")
	vnoremap <silent> <leader>btoa c<c-r>=system('python -m base64 -d', @")<cr><esc>`[v`]h
	vnoremap <silent> <leader>atob c<c-r>=system('python -m base64', @")<cr><backspace><esc>`[v`]h
endif
