-- Aliases
local set = vim.keymap.set
local cmd = vim.cmd
local opt = vim.opt


-- Basic settings
opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.hlsearch = true
opt.scrolloff = 1
opt.startofline = false
opt.mouse = "a"
opt.wrap = false
opt.ignorecase = true
opt.smartcase = true
opt.showcmd = true
opt.showmatch = true
opt.history = 1000
opt.wildmenu = true
opt.undofile = true
opt.undodir  = vim.fn.expand("~/.config/nvim/undo")
opt.wildmode = "longest:full,full"
opt.wildignore = "*.docx,*.we*,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.svg,*.flv,*.img,*.xlsx"
opt.clipboard = "unnamedplus"
opt.termguicolors = true
opt.cmdheight = 0
opt.laststatus = 0

-- Filetype & syntax
cmd([[syntax on]])
cmd([[filetype plugin indent on]])

-- Colors
vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })

-- CMD Abbreviations
cmd("cnoreabbrev q q!")
cmd("cnoreabbrev Q qall!")
cmd("cnoreabbrev w w!")
cmd("cnoreabbrev wq wq!")

-- Keymaps
set({"n","i","v"}, "<C-a>", "ggVG", { noremap = true, silent = true })
set({"n","i","v"}, "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
set({"n","i"}, "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
set({"v","n"}, "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
set({"v","n"}, "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
set({"v","n"}, "gj", "G", { noremap = true, silent = true })
set({"v","n"}, "gk", "gg", { noremap = true, silent = true })
set({"n","v"}, "te", ":tabedit ", { noremap = true })
set({"n","v"}, "<Tab>", ":tabnext<CR>", { noremap = true, silent = true })
set({"n","v"}, "<S-Tab>", ":tabprev<CR>", { noremap = true, silent = true })
set({"n","v"}, "E", ":e ", { noremap = true })
set({"n","v"}, "vs", ":vsplit ", { noremap = true })
set("n", "<A-/>", require("Comment.api").toggle.linewise.current, { noremap = true, silent = true })
set("v", "<A-/>", function() vim.api.nvim_feedkeys("gc", "x", false) end, { noremap = true, silent = true })

-- Launching
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        cmd("colorscheme gruvbox")
        require('Comment').setup()
        require('autoclose').setup()
        require('toggleterm').setup()
        require('colorizer').setup()
        require('nvim-ts-autotag').setup()
    end,
})

-- Toggle Venn
function Toggle_venn()
    if vim.b.venn_enabled == nil then
        vim.b.venn_enabled = true
        cmd("setlocal ve=all")
        for _, key in ipairs({"J","K","L","H"}) do
            vim.api.nvim_buf_set_keymap(0, "n", key, "<C-v>"..key:lower()..":VBox<CR>", { noremap = true })
        end
        vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<CR>", { noremap = true })
    else
        cmd("setlocal ve=")
        for _, key in ipairs({"J","K","L","H"}) do
            vim.api.nvim_buf_del_keymap(0, "n", key)
        end
        vim.api.nvim_buf_del_keymap(0, "v", "f")
        vim.b.venn_enabled = nil
    end
end
-- Terminal
require("toggleterm").setup({
    size = 14,
    open_mapping = [[<C-_>]],
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    persist_size = true,
    persist_mode = true,
    direction = "horizontal", 
    close_on_exit = true,
    shell = vim.o.shell,
    auto_scroll = true,
})

-- Colorizer
require("colorizer").setup({"*"}, {
    RGB = true, RRGGBB = true, names = true, RRGGBBAA = true,
    rgb_fn = true, hsl_fn = true, css = true, css_fn = true,
    mode = 'background',
})
