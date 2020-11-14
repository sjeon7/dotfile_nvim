" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
set pumheight=15

let g:completion_menu_length = 30
let g:completion_abbr_length = 20
let g:completion_enable_snippet = 'vim-vsnip'
let g:completion_matching_ignore_case = 1
let g:completion_trigger_on_delete = 1
let g:completion_enable_auto_paren = 1
let g:completion_trigger_character = ['.', '/']
let g:completion_enable_auto_hover = 1
let g:completion_enable_auto_signature = 0
let g:completion_customize_lsp_label = {
      \ 'Function': ' ',
      \ 'Method': ' ',
      \ 'Reference': ' ',
      \ 'Enum': ' ',
      \ 'Field': 'ﰠ ',
      \ 'Keyword': ' ',
      \ 'Variable': ' ',
      \ 'Folder': ' ',
      \ 'File': ' ',
      \ 'Snippet': ' ',
      \ 'vim-vsnip': ' ',
      \ 'UltiSnips': ' _U',
      \ 'Operator': ' ',
      \ 'Module': ' ',
      \ 'Text': 'ﮜ ',
      \ 'Buffers': ' ',
      \ 'Buffer': ' ',
      \ 'Class': ' ',
      \ 'Interface': ' ',
      \}

let g:completion_confirm_key = ""
imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
                 \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"


function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ completion#trigger_completion()
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"


lua << EOF
  local nvim_lsp = require('nvim_lsp')

  local on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    require'completion'.on_attach()

    -- Mappings.
    local opts = { noremap=true, silent=true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-s>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  end

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  local servers = {'vimls', 'jsonls', 'sumneko_lua'}
  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  nvim_lsp['pyls'].setup{
      settings = {
          pyls = {
            configurationSources={enum={"pylint"},type="string"},
              plugins = {
                    jedi_completion = {
                    enabled=true,
                    include_params=true, 
                    include_class_objects=false},
                  pycodestyle={enabled=false},
                  mccabe={enabled=false},
                  pyflakes={enabled=false},
                  pylint={enabled=true,
                    },
              }
          },
      },
      on_attach = on_attach,
      capabilities = capabilities,
  }
  --nvim_lsp['jedi_language_server'].setup{
  --    settings = {
  --        jedi = {
  --            diagnostics = {
  --                enable=false,
  --            }
  --        },
  --    },
  --    on_attach = on_attach,
  --    capabilities = capabilities,
  --}
  end
EOF


" vim-vsnip
let g:vsnip_integ_disable_on_complete_done = 0

" Jump forward or backward
imap <expr> <A-l>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<A-l>'
smap <expr> <A-l>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<A-l>'
imap <expr> <A-h> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<A-h>' 
smap <expr> <A-h> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<A-h>'


let g:completion_chain_complete_list = [
  \  {'complete_items': ['lsp']},
  \  {'complete_items': ['buffer','buffers','vim-vsnip']},
  \  {'complete_items': ['path'],'triggered_only' : ['/']},
\]
imap <A-j> <Plug>(completion_next_source)
imap <A-k> <Plug>(completion_prev_source)

let g:vsnip_snippet_dir = expand('~/vim_config/snippets')
