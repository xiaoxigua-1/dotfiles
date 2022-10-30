local status, nvimTree = pcall(require, "nvim-tree")
if (not status) then return end

nvimTree.setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
    },
})

vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<cr>')
vim.keymap.set('n', '<C-f>', ':NvimTreeFindFile<cr>')