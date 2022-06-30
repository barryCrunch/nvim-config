local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
[[__________                             _________                            .__     ]],
[[\______   \_____ ______________ ___.__.\_   ___ \_______ __ __  ____   ____ |  |__  ]],
[[ |    |  _/\__  \\_  __ \_  __ <   |  |/    \  \/\_  __ \  |  \/    \_/ ___\|  |  \ ]],
[[ |    |   \ / __ \|  | \/|  | \/\___  |\     \____|  | \/  |  /   |  \  \___|   Y  \]],
[[ |______  /(____  /__|   |__|   / ____| \______  /|__|  |____/|___|  /\___  >___|  /]],
[[        \/      \/              \/             \/                  \/     \/     \/ ]], 
}
dashboard.section.buttons.val = {
  dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
  dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("p", " " .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
  dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", " " .. " Config", ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}
local function footer()
  return "mbarry@packetdriving.com"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
