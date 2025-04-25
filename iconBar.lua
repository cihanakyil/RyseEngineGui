ui = require("ui")
local iconBar = {
    containers = {},
    items = {},
    imgFile_PATH = "img/icon/",
    icon_BgColor = {0.3,0.3,0.3},
    icon_alpha = 0.3
}
local displayWidth , displayHeight = love.graphics.getWidth(), love.graphics.getHeight()
function iconBar.load()
    --iconBar containers Clear  
    iconBar.containers = {}
    -- iconBar item Clear
    iconBar.items ={}
    -- Create IconBar (IconBar Olusturma)
    iconBar.addContainer(0,25,displayWidth,40,0,0,2,0,{0.15,0.15,0.15},"iconBar")
    -- Create IconBar Items 1 
    iconBar.addIcon(1,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"home_off.png","home_onn.png",false)
    -- Create IconBar Items 2 
    iconBar.addIcon(81,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"file_off.png","file_onn.png",false)
    -- Create IconBar Items 3 
    iconBar.addIcon(112,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"assetFolder_off.png","assetFolder_onn.png",false)
    -- Create IconBar Items 4 
    iconBar.addIcon(143,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"save_off.png","save_onn.png",false)
    -- Create IconBar Items 5 
    iconBar.addIcon(223,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"importTop_off.png","importTop_onn.png",false)
    -- Create IconBar Items 6 
    iconBar.addIcon(254,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"importRight_off.png","importRight_onn.png",false)
    -- Create IconBar Items 7 
    iconBar.addIcon(334,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"bug_off.png","bug_onn.png",false)
    -- Create IconBar Items 8 
    iconBar.addIcon(365,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"run_off.png","run_onn.png",false)
    -- Create IconBar Items 9 
    iconBar.addIcon(396,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"stop_off.png","stop_onn.png",false)
    -- Create IconBar Items 10 +
    iconBar.addIcon(427,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"paint_off.png","paint_onn.png",false)
    -- Create IconBar Items 11 +
    iconBar.addIcon(507,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"setting_off.png","setting_onn.png",false)
    -- Create IconBar Items 12 +
    iconBar.addIcon(538,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"question_off.png","question_onn.png",false)
    -- Create IconBar Items 13 +
    iconBar.addIcon(618,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"zoomOut_off.png","zoomOut_onn.png",false)
    -- Create IconBar Items 14 +
    iconBar.addIcon(649,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"zoomMatch_off.png","zoomMatch_onn.png",false)
    -- Create IconBar Items 15 +
    iconBar.addIcon(680,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"zoomIn_off.png","zoomIn_onn.png",false)
    -- Create IconBar Items 16 +
    iconBar.addIcon(711,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"dropdown_off.png","dropdown_onn.png",false)
    -- Create IconBar Items 17 +
    iconBar.addIcon(791,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"laptop_off.png","laptop_onn.png",false)
    -- Create IconBar Items 18 +
    iconBar.addIcon(displayWidth-61,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"user_off.png","user_onn.png",false)
    -- Create IconBar Items 19 +
    iconBar.addIcon(displayWidth-30,34,30,28,iconBar.icon_BgColor,iconBar.icon_alpha,"message_off.png","message_onn.png",false)
end
function iconBar.update()
    displayWidth , displayHeight = love.graphics.getWidth(), love.graphics.getHeight()
    --Load Update
    iconBar.load()
end
function iconBar.draw()
    local x,y = love.mouse.getPosition()
    for _, container in ipairs(iconBar.containers) do   container:draw()    end
    for i, item in ipairs(iconBar.items) do
        if x >= item.x and x <= item.x + item.width and y>=item.y and y<= item.y + item.height  then
            item.hovered = not item.hovered
        end
    end
    for _, item in ipairs(iconBar.items) do     item:draw()      end
end
function iconBar.mousepressed(x,y,button)   end
function iconBar.addContainer(x,y,w,h,pr,pl,pt,pb,bgColor,name)
     table.insert(iconBar.containers, ui.createContainer(
            {   x = x,                  y= y ,                 width = w,          height = h,
                padding_right = pr ,    padding_left = pl ,    padding_top = pt ,  padding_bottom = pb,
                bg_color = bgColor,     name  = name
            }))
end
function iconBar.addIcon(x,y,w,h,bgColor,alpha,iconOff,iconOnn,hovered)
    table.insert(iconBar.items, ui.createIcon(
            {   x = x ,    y = y , width = w , height = h , bgColor = bgColor ,   alpha = alpha,
                icon_off = love.graphics.newImage(iconBar.imgFile_PATH .. iconOff),
                icon_onn = love.graphics.newImage(iconBar.imgFile_PATH .. iconOnn),
                hovered = hovered or false,
            }))
end
return iconBar


