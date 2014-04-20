events.focus = function ()
    red=4095
    green=4095
    blue=4095
    bright_coeff=500
end

actions.Red_change = function(x)
    red=x
end

actions.Green_change = function(x)
    green=x
end

actions.Blue_change = function(x)
    blue=x
end

actions.Brightness_change = function(x)
    bright_coeff=x
end

actualize_sliders = function()
    layout.red_progress_bar.progress = red
    layout.green_progress_bar.progress = green
    layout.blue_progress_bar.progress = blue 
end

actions.Apply_colors = function()
    actualize_sliders()
    print(red*bright_coeff/1000)
    print(green*bright_coeff/1000)
    print(blue*bright_coeff/1000)
end

actions.White = function()
    red=4095
    green=4095
    blue=4095
    actions.Apply_colors()
end

actions.Black = function()
    red=0
    green=0
    blue=0
    actions.Apply_colors()
end

actions.Red = function()
    red=4095
    green=0
    blue=0
    actions.Apply_colors()
end

actions.Green = function()
    red=0
    green=4095
    blue=0
    actions.Apply_colors()
end

actions.Blue = function()
    red=0
    green=0
    blue=4095
    actions.Apply_colors()
end

actions.Cyan = function()
    red=0
    green=4095
    blue=4095
    actions.Apply_colors()
end

actions.Yellow = function()
    red=4095
    green=4095
    blue=0
    actions.Apply_colors()
end

actions.Magenta = function()
    red=4095
    green=0
    blue=4095
    actions.Apply_colors()
end