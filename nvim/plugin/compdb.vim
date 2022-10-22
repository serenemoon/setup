
function! Self_on_load(...) dict
    echomsg "on_load called wjy"
endfunction

let g:compdb = yarp#py3("compdb")
let g:compdb.on_load = function('Self_on_load')
call g:compdb.init()
call g:compdb.notify('trigger_gencc', "HERE")

"echomsg string(function('s:on_load'))

