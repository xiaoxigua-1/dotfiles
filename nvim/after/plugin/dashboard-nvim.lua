local home = os.getenv('HOME')
local status, dashboard = pcall(require, "dashboard")
if (not status) then return end

local header_file = home .. '/.config/nvim/static/miru_ha.txt'
local header_lines = {}

for line in io.lines(header_file) do
  header_lines[#header_lines + 1] = line
end

dashboard.custom_center = {
    {
        icon = "  ",
        desc = "Find  File                              ",
        action = ":Telescope file_browser",
        shortcut = "<Leader> f f",
    },
    {
        icon = "  ",
        desc = "Open Nvim config                        ",
        action = "tabnew $MYVIMRC | tcd %:p:h",
        shortcut = "<Leader> e v",
    },
    {
        icon = "  ",
        desc = "New file                                ",
        action = "enew",
        shortcut = "e           ",
    },
    {
        icon = "  ",
        desc = "Quit Nvim                               ",
        -- desc = "Quit Nvim                               ",
        action = "qa",
        shortcut = "q           ",
    },
}

dashboard.custom_header = header_lines
