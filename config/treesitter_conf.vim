lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = { enable = true },
  incremental_selection = { enable = true },
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = true },
    smart_rename = { enable = true },
    navigation = {
        enable = true,
        keymaps = {
            goto_next_usage = "<Tab>",
            goto_previous_usage = "<S-Tab>",
        }
    },
  },
  textobjects = { enable = true },
}
require "nvim-treesitter.highlight"
local hlmap = vim.treesitter.highlighter.hl_map

--Misc
hlmap.error = nil
hlmap["punctuation.delimiter"] = "Delimiter"
hlmap["punctuation.bracket"] = nil
EOF

hi! TSInclude guifg='#d3a0bc' ctermfg='175' gui=bold,italic cterm=bold,italic
hi! link TSFunction Aqua
hi! link TSParameter BlueItalic
hi! link TSRepeat RedItalic
hi! link TSException RedItalic
hi! link TSKeyword RedItalic
hi! link TSConditional RedItalic
hi! link TSConstructor OrangeItalic
hi! link TSFuncBuiltin Orange
