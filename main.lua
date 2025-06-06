        menu    = require("menu")
     iconBar    = require("iconBar")
   workspace    = require("workspace")
      footer    = require("footer")
   inspector    = require("inspector")
assetBrowser    = require("assetBrowser")
local displayWidth , displayHeight = love.graphics.getWidth(), love.graphics.getHeight()
function love.load()
    love.window.setTitle("RyseEngine GUI")
    love.window.setMode(1280, 720, {fullscreen = false, resizable = true, vsync=true})
    love.graphics.setBackgroundColor(0, 0, 0)
    font = love.graphics.newFont(12)
    love.graphics.setFont(font)
    iconBar.load()
    workspace.load()
    footer.load()
    inspector.load()
    assetBrowser.load()
    menu.load()
end
function love.draw()
    iconBar.draw()
    workspace.draw()
    footer.draw()
    inspector.draw()
    assetBrowser.draw()
    menu.draw()
end
function love.update(dt)
    iconBar.update()
    workspace.update()
    footer.update()
    inspector.update()
    assetBrowser.update()
    menu.update()
end
function love.mousepressed(x,y,button) 
    if button == 1 then
        menu.mousepressed(x,y,button)
        iconBar.mousepressed(x,y,button)
        workspace.mousepressed(x,y,button)
        footer.mousepressed(x,y,button)
        inspector.mousepressed(x,y,button)
        assetBrowser.mousepressed(x,y,button)
    end
end