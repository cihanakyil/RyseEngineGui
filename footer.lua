ui = require("ui")
local footer = {
    containers = {},
    bgColor = {0.15,0.15,0.15},
}
local displayWidth , displayHeight = love.graphics.getWidth(), love.graphics.getHeight()
function footer.load()
    --footer containers clear  
    footer.containers = {}
    --Create Footer Container 
    footer.addContainer(displayWidth/4,67+displayHeight-235,displayWidth*2.3/4,displayHeight/4.30,0,2,2,0,footer.bgColor,"footer")
end
function footer.update()
    displayWidth , displayHeight = love.graphics.getWidth(), love.graphics.getHeight()
    footer.load()
end
function footer.draw()
    for _, container in ipairs(footer.containers) do  container:draw()    end
end
function footer.mousepressed()  end
function footer.addContainer(x,y,w,h,pr,pl,pt,pb,bgColor,name)
   table.insert(footer.containers, ui.createContainer(
            {   x = x,                  y= y,               width = w,          height = h,
                padding_right = pr,     padding_left = pl,  padding_top = pt ,  padding_bottom = pb,
                bg_color = bgColor,     name  = name
            }
        )
    )
end
return footer 