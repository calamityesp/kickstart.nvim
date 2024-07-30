return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        local harpoon = require("harpoon")
        local tmux = require("harpoon.tmux")
        harpoon:setup({})

        -- Configure telescope
        local conf = require("telescope.config").values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end
            require("telescope.pickers")
                .new({}, {
                    prompt_title = "Harpoon",
                    finder = require("telescope.finders").new_table({
                        results = file_paths,
                    }),
                    previewer = conf.file_previewer({}),
                    sorter = conf.generic_sorter({}),
                })
                :find()
        end

        vim.keymap.set("n", "<leader>hm", function()
            toggle_telescope(harpoon:list())
        end, { desc = "Open harpoon window" })

        -- --------------- Keymaps ----------------------
        vim.keymap.set("n", "<leader>ha", function()
            harpoon:list():add()
            print("current buffer added to harpoon list")
        end)

        -- vim.keymap.set("n", "<leader>hm", function()
        --     harpoon.ui:toggle_quick_menu(harpoon:list())
        -- end)

        vim.keymap.set("n", "<leader>h1", function()
            harpoon:list():select(1)
        end)

        vim.keymap.set("n", "<leader>h2", function()
            harpoon:list():select(2)
        end)

        vim.keymap.set("n", "<leader>h3", function()
            harpoon:list():select(3)
        end)

        vim.keymap.set("n", "<leader>h4", function()
            harpoon:list():select(4)
        end)

        vim.keymap.set("n", "<leader>h5", function()
            harpoon:list():select(5)
        end)

        vim.keymap.set("n", "<leader>h6", function()
            harpoon:list():select(6)
        end)

        vim.keymap.set("n", "<leader>h7", function()
            harpoon:list():select(7)
        end)

        vim.keymap.set("n", "<leader>h8", function()
            harpoon:list():select(8)
        end)

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<leader>h<left>", function()
            harpoon:list():prev()
        end)

        vim.keymap.set("n", "<leader>h<right>", function()
            harpoon:list():next()
        end)

        -- Harpoon keymaps for tmux
        vim.keymap.set("n", "<leader>ht1", function()
            tmux:gotoTerminal(1)
        end, { desc = "Goto tmux window 1" })

        vim.keymap.set("n", "<leader>ht2", function()
            tmux:gotoTerminal(2)
        end, { desc = "Goto tmux window 2" })
    end,
}
