if exists('g:loaded_gilbert')
  finish
endif
let g:loaded_gilbert = 1

function! s:RequireGilbert(host) abort
  return jobstart(['gilbert.nvim'], { 'rpc': v:true })
endfunction

call remote#host#Register('gilbert.nvim', 'x', function('s:RequireGilbert'))
call remote#host#RegisterPlugin('gilbert.nvim', '0', [
  \ {'type': 'command', 'name': 'GiUpload', 'sync': 1, 'opts': {'nargs': '?'}},
  \ ])
