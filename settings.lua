-- 引入依赖
local wezterm = require 'wezterm'
local screen = require 'utils.screen'

return function(config)
    -- 基础配置：去除 windows 原生窗口，使用 wezterm 自带窗口
    -- 注：鼠标显示比较慢，貌似有些 bug
    config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"

    -- 设置窗口背景透明度
    config.window_background_opacity = 0.81

    -- 设置最大刷新率
    config.max_fps = 90

end

