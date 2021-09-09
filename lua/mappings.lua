local nest = prequire("nest")
if not nest then
    return
end

-- NOTE: any change within any of the "local" blocks won't take effect
--       unless called with nest.applyKeymaps() (see end of file)

local explorer = {
    prefix = "<leader>",
    { "e", "<cmd>NvimTreeToggle<cr>" }
}

local leader = {
    prefix = "<leader>",
    { "l", "<cmd>luaf%<cr>" },
    { "q", "<cmd>Format<cr>" },
}

local packer = {
    prefix = "<leader>p",
    { "i", "<cmd>PackerInstall<cr>" },
    { "S", "<cmd>PackerSource<cr>" },
    { "s", "<cmd>PackerSync<cr>" },
    { "u", "<cmd>PackerUpdate<cr>" },
    { "c", "<cmd>PackerCompile<cr>" },
    { "p", "<cmd>PackerProfile<cr>" },
    { "t", "<cmd>PackerStatus<cr>" },
    { "d", "<cmd>PackerClean<cr>" },
    { "o", "<cmd>PackerConfig<cr>" },
}

local telescope = {
    prefix = "<leader>f",
    { "t", "<cmd>Telescope<cr>" },
    { "f", "<cmd>Telescope fd<cr>" },
    { "b", "<cmd>Telescope buffers<cr>" },
    { "g", "<cmd>Telescope live_grep<cr>" },
    { "h", "<cmd>Telescope help_tags<cr>" },
    { "H", "<cmd>Telescope command_history<cr>" },
}

local n_gitsigns = {
    prefix = "<leader>h",
    { "s", "<cmd>lua require('gitsigns').stage_hunk()<cr>" },
    { "u", "<cmd>lua require('gitsigns').undo_stage_hunk()<cr>" },
    { "r", "<cmd>lua require('gitsigns').reset_hunk()<cr>" },
    { "R", "<cmd>lua require('gitsigns').reset_buffer()<cr>" },
    { "p", "<cmd>lua require('gitsigns').preview_hunk()<cr>" },
    { "b", "<cmd>lua require('gitsigns').blame_line(true)<cr>" },
    { "S", "<cmd>lua require('gitsigns').stage_buffer()<cr>" },
    { "U", "<cmd>lua require('gitsigns').reset_buffer_index()<cr>" },
}

local v_gitsigns = {
    prefix = "<leader>h",
    mode = "v",
    { "s", "<cmd>lua require('gitsigns').stage_hunk({vim.fn.line('.'), vim.fn.line('v'))})<cr>" },
    { "r", "<cmd>lua require('gitsigns').reset_hunk({vim.fn.line('.'), vim.fn.line('v'))})<cr>" },
}

-- NOTE: if this causes any issues, see here: https://stackoverflow.com/a/16360104
local utils = {
    { mode = "n", { "<cr>", "o<esc>" } },       -- enter adds new line below
    { mode = "n", { "<s-cr>", "O<esc>" } },     -- shift enter adds new line above
}

nest.applyKeymaps({
    explorer,
    -- escapes,
    utils,
    packer,
    leader,
    telescope,
    n_gitsigns,
    v_gitsigns,
})

nest.applyKeymaps({"<leader>m", "<cmd>split | terminal<cr>"})
