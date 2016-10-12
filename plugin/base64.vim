" Visual Mode mappings
vnoremap <silent> <leader>btoa c<c-r>=base64#decode(@")<cr><esc>`[v`]h
vnoremap <silent> <leader>atob c<c-r>=base64#encode(@")<cr><esc>`[v`]h

" Regex mappings
nnoremap <leader>atob/ :%s/\v()/\=base64#encode(submatch(1))/<home><right><right><right><right><right><right>
nnoremap <leader>btoa/ :%s/\v()/\=base64#decode(submatch(1))/<home><right><right><right><right><right><right>
