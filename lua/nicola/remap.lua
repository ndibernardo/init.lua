local builtin = require("telescope.builtin")
local wk = require("which-key")
local map = vim.keymap

map.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "[P]roject [V]iew" })
map.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Selection Up" })
map.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Selection Down" })
map.set("n", "J", "mzJ`z")
map.set("n", "<C-d>", "<C-d>zz")
map.set("n", "<C-u>", "<C-u>zz")
map.set("n", "n", "nzzzv")
map.set("n", "N", "Nzzzv")
map.set("x", "<leader>p", [["_dP]])
map.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "[y]ank to clipboard" })
map.set("n", "<leader>Y", [["+Y]], { desc = "[Y]ank line to clipboard" })
map.set({ "n", "v" }, "<leader>d", [["_d]])
map.set("i", "<C-c>", "<Esc>")
map.set("n", "Q", "<nop>")
map.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
map.set("n", "<C-k>", "<cmd>cnext<CR>zz")
map.set("n", "<C-j>", "<cmd>cprev<CR>zz")
map.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next error" })
map.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Previous error" })
map.set("n", "<C-s>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Make a file executable", silent = true })

wk.add({
  { "<leader>s", group = "[S]earch" },
  { "<leader>p", group = "[P]roject" },
})
map.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
map.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
map.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
map.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
map.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
map.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
map.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
map.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
map.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
map.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

map.set("n", "<leader>/", function()
  builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    winblend = 10,
    previewer = false,
  }))
end, { desc = "[/] Fuzzily search in current buffer" })

map.set("n", "<leader>s/", function()
  builtin.live_grep({
    grep_open_files = true,
    prompt_title = "Live Grep in Open Files",
  })
end, { desc = "[S]earch [/] in Open Files" })

map.set("n", "<leader>sn", function()
  builtin.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "[S]earch [N]eovim files" })
