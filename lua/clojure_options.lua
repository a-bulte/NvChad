vim.g["conjure#log#hud#enabled"] = false
vim.g["conjure#highlight#enabled"] = true
vim.g["conjure#highlight#group"] = "YankHighLight"

vim.cmd [[
  function! AutoConjureSelect()
    let shadow_build=system("ps aux | grep 'shadow-cljs watch' | head -1 | sed -E 's/.*?shadow-cljs watch //' | tr -d '\n'")
    let cmd='ConjureShadowSelect ' . shadow_build
    execute cmd
  endfunction
  command! AutoConjureSelect call AutoConjureSelect()
  map <leader>j :AutoConjureSelect<CR>
  autocmd BufReadPost *.cljs :AutoConjureSelect
]]
