ryseGui = require("ryseGui")
menu = require("menu")

local displayWidth , displayHeight = love.graphics.getWidth(), love.graphics.getHeight()

function love.load()

    love.window.setTitle("RyseEngine GUI")
    love.window.setMode(1280, 720, {fullscreen = false, resizable = true, vsync=true})
    love.graphics.setBackgroundColor(0, 0, 0)
    font = love.graphics.newFont(12)
    love.graphics.setFont(font)


    menu.load()
    
end

function love.draw()
    ryseGui.load(displayWidth,displayHeight)
    ryseGui.draw(displayWidth,displayHeight)

    menu.draw()

end

function love.update(dt)
    displayWidth , displayHeight = love.graphics.getWidth(), love.graphics.getHeight()
    ryseGui.update()

    menu.update()
end


function love.mousepressed(x,y,button) 
    
    if button == 1 then
        menu.mousepressed(x,y,button)
        ryseGui.mousepressed(x,y,button)
    end
   
end