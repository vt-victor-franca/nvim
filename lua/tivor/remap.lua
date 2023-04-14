vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<C-t>", ":ToggleTerm")

-- greatest remap ever
vim.keymap.set("x", "p", [["_dP]])
vim.keymap.set({ "n", "v" }, "y", [["+y]])
vim.keymap.set({ "n", "v" }, "Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>r", [[:%s///g<Left><Left>]])
vim.keymap.set("n", "<leader>rc", [[:%s///gc<Left><Left><Left>]])

vim.keymap.set("x", "<leader>r", [[:s///g<Left><Left>]])
vim.keymap.set("x", "<leader>rc", [[:s///gc<Left><Left><Left>]])

vim.keymap.set("i", "<C-s>", "<esc>:w<cr>")
vim.keymap.set("n", "<C-s>", ":w<cr>")

vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")

vim.keymap.set("n", "<Tab>", ":bn<CR>")
vim.keymap.set("n", "<S-Tab>", ":bp<CR>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<cr>")
vim.keymap.set("n", "<leader>nh", ":noh<cr>")

vim.keymap.set("n", "fdb", ":bp|bd#<CR>")
vim.keymap.set("n", "fda", ":%bd!|e#<CR>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.api.nvim_create_autocmd("CursorHold,CursorHoldI", {
  pattern = "*",
  callback = function()
    vim.cmd([[exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/']])
  end,
})

