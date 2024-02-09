local M = {}


M.colors = {
    -- Base Colors
    seafloor_brown = '#382b2c',
    dark_ocean = '#001920',
    medium_ocean = '#00324b',
    blue_grey = '#2c5372',
    standard_blue = '#61afef',
    light_blue = '#00d9ff',
    light_turquoise = '#00dada',
    pistacchio_algae = '#97c279',
    vivid_green = '#2ed30d',
    orichalcum = '#e6d47e',
    rad_yellow = '#fffb00',
    coral_orange = '#ff8200',
    coral_purple = '#c578dc',
    vivid_red = '#c678dd',
    vivid_pink = '#ff0081',
    white_sand = '#faf9e6',
}

-- Diff Colors
M.colors.diff_add = M.colors.pistacchio_algae
M.colors.diff_remove = M.colors.vivid_red
M.colors.diff_change = M.colors.vivid_pink
M.colors.diff_text = M.colors.standard_blue
