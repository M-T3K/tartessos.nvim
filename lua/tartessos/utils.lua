-- Code mostly taken from github.com/navarasu/onedark.nvim, also MIT Licensed.

local utils = {black = "#000000", white = "#FFFFFF"}

local function hexToRgb(hex_str)
  local hex = "[abcdef0-9][abcdef0-9]"
  local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
  hex_str = string.lower(hex_str)

  assert(string.find(hex_str, pat) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex_str))

  local r, g, b = string.match(hex_str, pat)
  return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
function utils.blend(fg, bg, alpha)
  bg = hexToRgb(bg)
  fg = hexToRgb(fg)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02X%02X%02X", blendChannel(1), blendChannel(2), blendChannel(3))
end

function utils.darken(hex, amount, bg)
  return utils.blend(hex, bg or utils.black, math.abs(amount))
end

function utils.lighten(hex, amount, fg)
  return utils.blend(hex, fg or utils.white, math.abs(amount))
end

return utils
