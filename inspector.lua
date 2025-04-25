ui = require("ui")
local inspector ={ 
    containers = {},
    boxes = {},
    boxTitleFont = love.graphics.newFont(16),
    textboxes = {},
    textBoxTextFont = love.graphics.newFont(12),
    icons ={},
    img_File_PATH = "img/icon/" ,
    icon_BgColor = {1,1,1},
    icon_alpha = 0
}
local displayWidth , displayHeight = love.graphics.getWidth(), love.graphics.getHeight()

function inspector.load()
    --Clear Inspector Containers 
    inspector.containers = {}
    --Clear Inspector Boxes 
    inspector.boxes = {}
    --Clear Inspector TextBoxes
    inspector.textboxes = {}
    --Clear Inspector Icons 
    inspector.icons = {}
    --Create Inspector Container 
    inspector.addContainer(0,67,displayWidth / 4,displayHeight / 1.116,18,18,2,0,{0.15,0.15,0.15},7,{0.25,0.25,0.25},"Inspector")
    --Create Inspector TitleBox
    inspector.addBox(0,67, displayWidth / 4,24,18,18,22,0,{0.25,0.25,0.25},4,{0.35,0.35,0.35},"InspectorTitleBox","Inspector",inspector.boxTitleFont)
    --Create Inspector Searching Textbox
    inspector.addTextBox(0,67,(displayWidth / 4),24,78,28,55,0,{0.12,0.12,0.12},2,{0.05,0.05,0.05},
                        "InspectorSearchingeTextBox","Search...",inspector.textBoxTextFont,0,0)
    --Create Icon 1
    inspector.addIcon((displayWidth/4)-95,125,18,18,inspector.icon_BgColor,
                        inspector.icon_alpha,"upIcon_off.png","upIcon_onn.png",false)
    --Create Icon 2
    inspector.addIcon((displayWidth/4)-72,125,18,18,inspector.icon_BgColor,
                        inspector.icon_alpha,"downIcon_off.png","downIcon_onn.png",false)
    --Create Icon 3
    inspector.addIcon((displayWidth/4)-52,122,24,24,inspector.icon_BgColor,
                        inspector.icon_alpha,"lock_off.png","lock_onn.png",false)
    --Create Icon 4
    inspector.addIcon((displayWidth/4)-28,118,24,32,inspector.icon_BgColor,
                        inspector.icon_alpha,"filter_inspector_off.png","filter_inspector_onn.png",false)
    
end
function inspector.update()
    displayWidth , displayHeight = love.graphics.getWidth(), love.graphics.getHeight()
    inspector.load()
end
function inspector.draw()
    for _, container in ipairs(inspector.containers) do  container:draw()    end
    for _, box in ipairs(inspector.boxes) do box:draw() end
    for _, textbox in ipairs(inspector.textboxes) do textbox:draw() end
    for _, icon in ipairs(inspector.icons) do icon:draw() end
end
function inspector.mousepressed()   end
function inspector.addContainer(x,y,w,h,pr,pl,pt,pb,bgColor,borderWidth,borderColor,name)
       table.insert(inspector.containers, ui.createContainer(
        {   x = x,              y= y,               width = w,          height = h, 
            padding_right = pr, padding_left = pl,  padding_top = pt ,  padding_bottom = pb,
            bg_color = bgColor, border = {border_width = borderWidth,   border_color = borderColor},    name  = name,
        }))
end
function inspector.addBox(x,y,w,h,pr,pl,pt,pb,bgColor,borderWidth,borderColor,name,title,titleFont)
    table.insert(inspector.boxes, ui.createBox(
            {   x = x,              y= y,              width = w,         height = h,
                padding_right = pr, padding_left = pl, padding_top = pt , padding_bottom = pb,
                bg_color = bgColor, border = { border_width = borderWidth, border_color = borderColor},
                name  = name,       title = title,     titleFont = titleFont
            }))
end
function inspector.addTextBox(x,y,w,h,pr,pl,pt,pb,bgColor,borderWidth,borderColor,name,placeholder,
    textFont,searchingResultNumbers,searchingFindingNumbers)
    table.insert(inspector.textboxes, ui.createTextBox(
            {   x = x,              y= y,               width = w,          height = h,
                padding_right = pr, padding_left = pl,  padding_top = pt ,  padding_bottom = pb,
                bg_color = bgColor, border = { border_width = borderWidth,  border_color = borderColor},
                name  = name,       placeholder = placeholder,    textFont = textFont,
                searchingResultNumbers = searchingResultNumbers,  searchingFindingNumbers = searchingFindingNumbers,
            }))
end
function inspector.addIcon(x,y,w,h,bgColor,alpha,iconOff,iconOnn,hovered)
        table.insert(inspector.icons, ui.createIcon(
            {   x = x,     y = y,  width = w,  height = h, bgColor = bgColor,  alpha = alpha,
                icon_off = love.graphics.newImage(inspector.img_File_PATH .. iconOff),
                icon_onn = love.graphics.newImage(inspector.img_File_PATH .. iconOnn)
            }))
end
return inspector