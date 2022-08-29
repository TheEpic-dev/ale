call ale#Set('djlint_executable', 'djlint')
call ale#Set('djlint_options', '')

function! ale#fixers#djlint#Fix(buffer) abort
    let l:executable = ale#Var(a:buffer, 'djlint_executable')
    let l:options = ale#Var(a:buffer, 'djlint_options')

    return {
    \   'command': ale#Escape(l:executable)
    \       . ' --reformat'
    \       . (empty(l:options) ? '': ' ' . l:options)
    \       . ' -',
    \}
endfunction
