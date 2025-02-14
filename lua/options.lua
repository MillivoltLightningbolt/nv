-- shortcuts
local g = vim.g
local opt = vim.opt
local o = vim.o

-- set config path
g.configdir = "$XDG_CONFIG_HOME/nvim"

-- set leader key
g.mapleader = " "

-- enable current line highlighting
opt.cursorline = true

-- disable ~ on eob
opt.fillchars = { eob = " " }

-- set maximum amount of completion items to 10
opt.pumheight = 10

-- set minimal number of screeen lines abow and below cursor
opt.scrolloff = 1000

-- make splits open to down and right
opt.splitbelow = true
opt.splitright = true

-- disable providers
g.python_host_skip_check = 1
g.loaded_python3_provider = 1
g.loaded_python_provider = 1
g.loaded_node_provider = 1
g.loaded_ruby_provider = 1
g.loaded_perl_provider = 1

-- number stuff
opt.number = true
opt.relativenumber = true
opt.numberwidth = 1

-- tab stuff
opt.tabstop = 4
opt.expandtab = true
opt.shiftwidth = 4

-- disable intro
opt.shortmess:append("sI")

-- enable terminal colors
o.termguicolors = true

-- disable shada
opt.shadafile = "NONE"

-- disable line-wrapping
opt.wrap = false

-- use system clipboard
o.clipboard = "unnamedplus"

-- enable mouse
o.mouse = "a"

-- disable built-in plugins
local disabled_built_ins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "matchit",
    "tar",
    "tarPlugin",
    "rrhelper",
    "spellfile_plugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end
