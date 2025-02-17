-- 引入依赖
local wezterm = require 'wezterm'

return function(config)
    -- 基础配置：去除 windows 原生窗口，使用 wezterm 自带窗口
    -- 注：鼠标显示比较慢，貌似有些 bug
    config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"

    -- 设置默认使用 NuShell
    config.default_prog = { 'nu' }

    -- 设置窗口背景透明度
    config.window_background_opacity = 0.81

    -- 设置最大刷新率
    config.max_fps = 90

    -- 使用 GPU 渲染
    config.front_end = 'OpenGL'

    -- 设置动画帧率
    -- 注：需要指定 front_end 为 OpenGL，否则使用 CPU 渲染会导致卡顿，使用 CPU 渲染时 animation_fps 设置为 1 以此禁用动画
    config.animation_fps = 90

    -- 当 true（默认值）时，当向终端输入时，将自动滚动到输入行。
    -- config.scroll_to_bottom_on_input = false

    config.font = wezterm.font('JetBrains Mono', {weight="Medium", italic=false})
    config.font_size = 12.0

end

