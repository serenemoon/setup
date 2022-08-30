

 let g:self_custom_keys = get(g:, 'self_custom_keys', {})

 " Open vimrc file dir -> stdpath('config')
 let g:self_custom_keys['NT_VIMRC'] = ',nr'

 " Open vim data dir -> stdpath('data')
 let g:self_custom_keys['NT_VIMDATA'] = ',nd'

 " Open setup dir, the git dir of this file
 let g:self_custom_keys['NT_VIMSETUP'] = ',ns'

 " Open current file dir
 let g:self_custom_keys['NT_CurFileDir'] = '<F3>'

 " Open current file project dir -> dir contains .git/...
 let g:self_custom_keys['NT_CurProjectDir'] = '<S-F3>'
