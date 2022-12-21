-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.insert_mode["jk"] = "<Esc>"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- to make vim behave like normal editor (delete, change and cut will not register new value in main paste registry)
lvim.keys.normal_mode["d"] = "\"_d"
lvim.keys.normal_mode["dd"] = "\"_dd"
lvim.keys.normal_mode["D"] = "\"_D"
lvim.keys.normal_mode["c"] = "\"_c"
lvim.keys.normal_mode["C"] = "\"_C"
lvim.keys.normal_mode["x"] = "\"_x"
lvim.keys.normal_mode["X"] = "\"_X"

lvim.keys.visual_mode["d"] = "\"_d"
lvim.keys.visual_mode["dd"] = "\"_dd"
lvim.keys.visual_mode["D"] = "\"_D"
lvim.keys.visual_mode["c"] = "\"_c"
lvim.keys.visual_mode["C"] = "\"_C"

-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )
