return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {

        [[                                           ]],
        [[                                           ]],
        [[      ▐ ▄ ▄▄▄ .       ▌ ▐·▪  • ▌ ▄ ·.      ]],
        [[     •█▌▐█▀▄.▀· ▄█▀▄ ▪█·█▌██ ·██ ▐███▪     ]],
        [[     ▐█▐▐▌▐▀▀▪▄▐█▌.▐▌▐█▐█•▐█·▐█ ▌▐▌▐█·     ]],
        [[     ██▐█▌▐█▄▄▌▐█▌.▐▌ ███ ▐█▌██ ██▌▐█▌     ]],
        [[     ▀▀ █▪ ▀▀▀  ▀█▄▀▪. ▀  ▀▀▀▀▀  █▪▀▀▀     ]],
        [[                                           ]],
        [[                                           ]],

    }
    dashboard.section.header.opts.hl = "DevIconTxt"
    
    -- https://www.reddit.com/r/neovim/comments/s8lm09/looking_for_help_with_alpha/
    -- nice solution for button highlighting
    local buttonhl = function(shortcut, text, command, hl)
      local button = dashboard.button(shortcut, text, command)
      button.opts.hl_shortcut = hl
      return button
    end
    dashboard.section.buttons.val= {
      buttonhl("f", "  Find file", ":Telescope find_files <CR>", "DevIconTxt"),
      buttonhl("e", "  New file", ":ene <BAR> startinsert <CR>", "DevIconTxt"),
      buttonhl("r", "󰅒  Recently used files", ":Telescope oldfiles <CR>", "DevIconTxt"),
      buttonhl("t", "󰯂  Find text", ":Telescope live_grep <CR>", "DevIconTxt"),
      buttonhl("c", "  Open Lazy", ":Lazy <CR>", "DevIconTxt"),
      buttonhl("q", "  Quit Neovim", ":qa<CR>", "DevIconTxt"),
    }
    dashboard.section.buttons.opts.hl = "DevIconTxt"


    local function footer()
      local fortune_handle = io.popen("fortune -s")
      local result = fortune_handle:read("*a")
      fortune_handle:close()
      return result
    end

    dashboard.section.footer.val = footer()
    dashboard.section.footer.opts.hl = "Type"

    dashboard.opts.layout = {
          { type = "padding", val = 7},
			dashboard.section.header,
			{ type = "padding", val = 7},
			dashboard.section.buttons,
			{ type = "padding", val = 7 },
			dashboard.section.footer,
		}

    alpha.setup(dashboard.opts)
  end,
}
