return {
    "calamityesp/obsidian.nvim",
    event = { "BufReadPre", "BufNewFile" },
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = false,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",

        -- see below for full list of optional dependencies 👇
    },
    config = function()
        local obsidian = require("obsidian")

        obsidian.setup({
            workspaces = {
                {
                    name = "personal",
                    path = "~/.oh-my-bash/custom/obsidian/Calamity_Notes/",
                },
                -- {
                --   name = "work",
                --   path = "~/vaults/work",
                -- },
            },
            mappings = {
                ["<leader>och"] = {
                    action = function()
                        return require("obsidian").util.toggle_checkbox()
                    end,
                    opts = { buffer = true, desc = "toggle checkboxes" },
                },
                -- ["<leader>oov"] = {
                --     action = function()
                --         vim.cmd("tabnew")
                --         vim.cmd("ObsidianSearch")
                --     end,
                -- },
            },
        })

        --        Obsidian related keymaps  -------------------
        -- Open notes in new tab
        vim.keymap.set("n", "<leader>oov", function()
            vim.cmd("tabnew")
            vim.cmd("ObsidianSearch")
        end, { desc = "Open note in new tab" })

        vim.keymap.set("n", "<leader>oos", function()
            vim.cmd("vsplit")
            vim.cmd("ObsidianSearch")
        end, { desc = "open note in new split" })
    end,
}
