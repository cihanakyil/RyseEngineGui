ui = require("ui")
local workspace = 
{
    containers = {},
    bgColor = {0.15,0.15,0.15},
    bgImage = love.graphics.newImage("img/background.png"),
}
local displayWidth , displayHeight = love.graphics.getWidth(), love.graphics.getHeight()
function workspace.load()
    --workspace containers clear  
    workspace.containers = {}
    --Create WorkSpace Container 
    workspace.addContainer(displayWidth/4,67,displayWidth*2.3/4,displayHeight-235,0,2,2,0,workspace.bgColor,workspace.bgImage,"workSpace")
end
function workspace.update()
    displayWidth , displayHeight = love.graphics.getWidth(), love.graphics.getHeight()
    workspace.load()
end
function workspace.draw()
    for _, container in ipairs(workspace.containers) do  container:draw()    end
end
function workspace.mousepressed()   end

function workspace.addContainer(x,y,w,h,pr,pl,pt,pb,bgColor,bgImage,name)
    table.insert(workspace.containers, ui.createContainer(
            {   x = x,                  y= y,                   width = w,          height = h,
                padding_right = pr,     padding_left = pl,      padding_top = pt ,  padding_bottom = pb,
                bg_color = bgColor,     bg_image = bgImage,     name  = name
            }
    ))
end
return workspace