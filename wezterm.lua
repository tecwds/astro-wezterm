-- 引入 wezterm API
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- 加载并执行settings配置
require('settings')(config)

return config