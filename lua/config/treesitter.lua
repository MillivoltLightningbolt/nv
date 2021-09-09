local treesitter = prequire("nvim-treesitter.configs")
if not treesitter then
    return
end

treesitter.setup({
    ensure_installed = {
        "lua",
        "toml",
        "comment",
        "python",
        "json",
        "bash",
        "vim"
    },
    highlight = {
        enable = true,  -- set to false to deactivate plugin (not recommended)
        additional_vim_regex_highlighting = false,
    },
})
