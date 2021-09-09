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
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})
