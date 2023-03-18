local status_ok, alpha = pcall(require, "alpha")                                       
if not status_ok then
    return
end

local theme_ok, alpha_theme = pcall(require, "alpha.themes.dashboard")                                                                          
if not theme_ok then                                                                                                                           
    return                                                                                                                                       
end

alpha.setup(alpha_theme.config)
local dashboard = require'alpha.themes.dashboard'
dashboard.section.header.val = {
    [[                                                                       ]],
    [[                                                                     ]],
    [[       ████ ██████           █████      ██                     ]],
    [[      ███████████             █████                             ]],
    [[      █████████ ███████████████████ ███   ███████████   ]],
    [[     █████████  ███    █████████████ █████ ██████████████   ]],
    [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
    [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
    [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
    [[                                                                       ]], 
}
