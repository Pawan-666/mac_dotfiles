--vi .local/share/lunarvim/site/pack/packer/start/              # edit conf files
--lvim ~/.local/share/lunarvim/site/pack/lazy/opt/clipboard-image.nvim/lua/clipboard-image/config.lua 
--[[
lvim.builtin.which_key
lvim is the global options object
-- Tabs, indent
-----------------------------------------------------------
Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
-- general
lvim.log.level = "warn"
--lvim.log.level = "warn|debug"
lvim.format_on_save.enabled = false
lvim.transparent_window = true
lvim.colorscheme = "gruvbox"
--vim.opt.relativenumber = true -- set relative numbered lines
-- X closes a buffer
-- General
lvim.builtin.terminal.active = false
lvim.builtin.nvimtree.active = false
lvim.builtin.breadcrumbs.active = false
lvim.builtin.project.active = false
lvim.builtin.gitsigns.active = false
lvim.builtin.lualine.active = false
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
vim.opt.laststatus = 0
-- vim.opt.iskeyword:append("-") -- consider string-string as whole word

-- vim.opt.tabstop= 4
vim.opt.softtabstop= 2
-- vim.opt.shiftwidth= 4
-- vim.opt.expandtab= true
vim.opt.smartindent= true

vim.opt.expandtab = true      -- use spaces instead of tabs
vim.opt.shiftwidth = 2        -- shift 4 spaces when tab
vim.opt.tabstop = 2           -- 1 tab == 4 spaces
-- vim.opt.smartindent = false    -- autoindent new lines
vim.opt.mouse = 'a'               -- enable mouse support
vim.opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard
vim.opt.swapfile = false          -- don't use swapfile
vim.opt.wrap = true               -- line wrapping
vim.opt.linebreak = true          -- don't split words
vim.opt.syntax = 'enable'         -- enable syntax highlighting
vim.opt.number = true             -- show line number
vim.opt.showmatch = true          -- highlight matching parenthesis
vim.opt.relativenumber = true     -- show relative distance between rows
vim.opt.scrolloff = 8            -- keep 10 row buffer on screen edges
vim.opt.foldmethod = 'marker'     -- enable folding (default 'foldmarker')
--vim.opt.colorcolumn = '120'        -- line length marker at 80 columns
--vim.opt.colorcolumn = true
vim.opt.splitright = true         -- vertical split to the right
vim.opt.splitbelow = true         -- horizontal split to the bottom
vim.opt.ignorecase = true         -- ignore case letters when search
vim.opt.smartcase = true          -- ignore lowercase for the whole pattern
vim.opt.hlsearch = false          -- remove highlighting after search

lvim.keys.command_mode["w!!"] = "w !sudo tee > /dev/null %<CR>"
lvim.keys.insert_mode["<C-e>"] = "<esc>$i<right>"
lvim.keys.insert_mode["<C-a>"] = "<esc>0i"
lvim.keys.insert_mode["<C-f>"] = "<Right>"
lvim.keys.insert_mode["<C-b>"] = "<Left>"

lvim.keys.normal_mode["<Leader>S"] = ":setlocal spell! spelllang=en_us<CR>"
lvim.keys.normal_mode["<Leader>C"] = ":set cuc!<CR>"   -- set cursor on column
lvim.keys.normal_mode["<Leader>n"] = ":set nu! rnu!<CR>"
lvim.keys.normal_mode["<Leader>z"] = ":ZenMode<CR>"
-- Markdown bindings

lvim.keys.normal_mode["<Leader>M"] = ":MarkdownPreviewToggle<CR>"
lvim.keys.insert_mode["'1"] = "# <esc>a"
lvim.keys.insert_mode["'2"] = "## <esc>a"
lvim.keys.insert_mode["'3"] = "### <esc>a"
lvim.keys.insert_mode["'4"] = "#### <esc>a"
lvim.keys.insert_mode["'5"] = "##### <esc>a"
lvim.keys.insert_mode["'B"] = "____<esc>hi"
lvim.keys.insert_mode["'T"] = '+++<CR>title = "Blog_title"<CR>date = 2023-02-01<CR>+++<CR><CR>'
lvim.keys.insert_mode["'I"] = "**<esc>i"
lvim.keys.normal_mode["'p"] = ":PasteImg<CR>o"
lvim.keys.insert_mode["'P"] = "<esc>:PasteImg<CR>o"
lvim.keys.insert_mode["'M"] = "``<esc>i"
lvim.keys.insert_mode["'R"] = "---<CR>"
lvim.keys.insert_mode["'L"] = "[]()<esc>Ba"
-- lvim.keys.insert_mode["'C"] = "```sh```<esc>2hi<CR><CR><esc>hi"
lvim.keys.insert_mode["'C"] = "``````<esc>2hi<CR><CR><esc>hi"      -- bash
lvim.keys.insert_mode["'b"] = "    "

--lvim.keys.insert_mode["'r"] = "---<esc>Ojjj2ojji"
--lvim.keys.insert_mode["'l"] = "[](https://.com)<esc>Ba"
--lvim.keys.insert_mode["'p"] = "![Image](s '')<esc>hi"
--lvim.keys.insert_mode["'c"] = "``````<esc>2hi<CR><esc>O"

-- lvim.keys.normal_mode["T"] = ":Telescope buffers<CR>"
-- ggVGp

lvim.keys.normal_mode["<Leader>L"] = ":LspStop<CR>"
lvim.keys.normal_mode["<Leader>p"] = "ggVGp"
lvim.keys.normal_mode["j"] = "gj"
lvim.keys.normal_mode["k"] = "gk"
lvim.keys.normal_mode["gt"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["gT"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<C-j>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<C-k>"] = ":BufferLineCyclePrev<CR>"
--lvim.keys.normal_mode["<Leader>r"] = ":LspRestart<CR>"
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.normal_mode["<Leader>s"] = ":w<CR>"
-- lvim.keys.normal_mode["<Leader>B"] = ":%s/\s\+$//e<CR>"        # remove trailing whitespaces
-- lvim.keys.normal_mode["<Leader>B"] = ":match ErrorMsg '\s\+$'<CR>"
lvim.keys.normal_mode["<Leader>d"] = ":bd<CR>"
lvim.keys.normal_mode["<Leader>w"] = ":wa<CR>"
lvim.keys.normal_mode["<Leader>a"] = ":ASToggle<CR>"
lvim.keys.normal_mode["<Leader>q"] = ":qa!<CR>"
lvim.keys.normal_mode["<C-t>"] = ":NnnPicker %:p:h<CR>"
--lvim.keys.normal_mode["<C-t>"] = ":Lf<CR>"
lvim.keys.normal_mode["<Leader><Leader>"] = "<C-^><CR>"
--lvim.builtin.lualine.options.theme = "gruvbox"
lvim.builtin.lualine.style = "none" -- or "none"
lvim.keys.normal_mode["<C-h>"] = false
-- lvim.keys.normal_mode["<C-j>"] = false
lvim.keys.insert_mode["jj"] = "<Esc>"
lvim.keys.insert_mode["kk"] = "<Esc>"
-- lvim.keys.normal_mode["<C-k>"] = false
lvim.keys.normal_mode["<C-l>"] = false

-- Centers cursor when moving 1/2 page down
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )
-- telescope
lvim.builtin.which_key.mappings["f"] = {
  name = "Find",
--  b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
 -- c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
  f = { "<cmd>Telescope find_files<cr>", "Find files" },
  s = { "<cmd>Telescope live_grep<cr>", "Find Text" },
  c = { "<cmd>Telescope grep_string<cr>", "Find String" },

--  h = { "<cmd>Telescope help_tags<cr>", "Help" },
--  H = { "<cmd>Telescope highlights<cr>", "Highlights" },
--  i = { "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>", "Media" },
-- l = { "<cmd>Telescope resume<cr>", "Last Search" },
--  M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
  h= { "<cmd>Telescope oldfiles<cr>", "Recent File" },
  g= { "<cmd>Telescope git_status<cr>", "Recent File" },
  m= { "<cmd>Telescope marks<cr>", "Marks File" },
  r = { "<cmd>Telescope registers<cr>", "Registers" },
  k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  C = { "<cmd>Telescope commands<cr>", "Commands" },
}
lvim.builtin.telescope.defaults.file_ignore_patterns = {
  ".git/",
  "target/",
  "docs/",
  "vendor/*",
  "%.lock",
  "__pycache__/*",
  "%.sqlite3",
  "%.ipynb",
  "node_modules/*",
  -- "%.jpg",
  -- "%.jpeg",
  -- "%.png",
  "%.svg",
  "%.otf",
  "%.ttf",
  "%.webp",
  ".dart_tool/",
  ".github/",
  ".gradle/",
  ".idea/",
  ".settings/",
  ".vscode/",
  "__pycache__/",
  "build/",
  "env/",
  "gradle/",
  "node_modules/",
  "%.pdb",
  "%.dll",
  "%.class",
  "%.exe",
  "%.cache",
  "%.ico",
  "%.pdf",
  "%.dylib",
  "%.jar",
  "%.docx",
  "%.met",
  "smalljre_*/*",
  ".vale/",
  "%.burp",
  "%.mp4",
  "%.mkv",
  "%.rar",
  "%.zip",
  "%.7z",
  "%.tar",
  "%.bz2",
  "%.epub",
  "%.flac",
  "%.tar.gz",
}

lvim.builtin.telescope.pickers.live_grep = {
  theme = "dropdown",
}

lvim.builtin.telescope.pickers.grep_string = {
  theme = "dropdown",
}

lvim.builtin.telescope.pickers.find_files = {
  theme = "dropdown",
  previewer = false,
}

lvim.builtin.telescope.pickers.buffers = {
  theme = "dropdown",
  previewer = false,
  initial_mode = "normal",
}

lvim.builtin.telescope.pickers.planets = {
  show_pluto = true,
  show_moon = true,
}

lvim.builtin.telescope.pickers.colorscheme = {
  enable_preview = true,
}

lvim.builtin.telescope.pickers.lsp_references = {
  theme = "dropdown",
  initial_mode = "normal",
}

lvim.builtin.telescope.pickers.lsp_definitions = {
  theme = "dropdown",
  initial_mode = "normal",
}

lvim.builtin.telescope.pickers.lsp_declarations = {
  theme = "dropdown",
  initial_mode = "normal",
}

lvim.builtin.telescope.pickers.lsp_implementations = {
  theme = "dropdown",
  initial_mode = "normal",
}

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = "<CR>",
    -- ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    -- ["<C-j>"] = actions.move_selection_next,
    -- ["<C-k>"] = actions.move_selection_previous,
  },
}

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }
-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
--lvim.builtin.alpha.active = true
--lvim.builtin.alpha.mode = "dashboard"
--lvim.builtin.terminal.active = true
--lvim.builtin.nvimtree.setup.view.side = "left"
--lvim.builtin.nvimtree.setup.view.mappings.list = {
--  { key = "<C-v>", action = "vsplit" },
--  { key = "<C-x>", action = "split" },
--}
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
-- lvim.builtin.treesitter.ensure_installed = {
--   "bash",
--   "c",
--   "javascript",
--   "json",
--   "lua",
--   "python",
--   "typescript",
--   "tsx",
--   "css",
--   "rust",
--   "java",
--   "yaml",
-- }

-- lvim.builtin.treesitter.ignore_install = { "haskell" }
-- lvim.builtin.treesitter.highlight.enable = true
-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumneko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }
-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
lvim.plugins = {
    { "ellisonleao/gruvbox.nvim" },
    {"mcchrish/nnn.vim" },
    {"Pocco81/auto-save.nvim"},
    { "iamcco/markdown-preview.nvim", build = "cd app && npm install", build = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" },},
    { 'glacambre/firenvim', build = function() vim.fn['firenvim#install'](0) end },
    {'ekickx/clipboard-image.nvim'},
    {"folke/zen-mode.nvim"},
    {"murtaza-u/lunarline"},
}
-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
-- Sample configuration is supplied

