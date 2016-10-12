if has("unix")
	vnoremap <silent> <leader>btoa c<c-r>=system('base64 --decode --wrap=0', @")<cr><esc>
	vnoremap <silent> <leader>atob c<c-r>=system('base64 --wrap=0', @")<cr><esc>
endif
