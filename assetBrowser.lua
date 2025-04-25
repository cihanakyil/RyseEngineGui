ui = require("ui")

local assetBrowser = {

    containers = {},
    boxes = {},
    boxTitleFont = love.graphics.newFont(16),
    textboxes = {},
    textBoxTextFont = love.graphics.newFont(12),
    icons ={},
    img_File_PATH = "img/icon/" ,
    icon_BgColor = {1,1,1},
    icon_alpha = 0,
    options={
        optionCount = 0,
    },
    optionValueFont = love.graphics.newFont(13)

}

local displayWidth , displayHeight = love.graphics.getWidth(), love.graphics.getHeight()

function assetBrowser.load()
    --Clear assetBrowser Containers 
    assetBrowser.containers = {}
    --Clear assetBrowser Boxes 
    assetBrowser.boxes = {}
    --Clear assetBrowser TextBoxes
    assetBrowser.textboxes = {}
    --Clear assetBrowser Icons 
    assetBrowser.icons = {}
    --Clear assetBrowser options
    assetBrowser.options = { optionCount = 0,}
    
    --Create Asset Browser Container 
    assetBrowser.addContainer((displayWidth*3.3)/4,67,displayWidth *0.7/ 4,displayHeight / 1.116,20,4,2,0,
                            {0.15,0.15,0.15},7,{0.25,0.25,0.25},"assetBrowser")
    --Create Asset Browser TitleBox
    assetBrowser.addBox((displayWidth*3.3)/4,67, displayWidth *0.7/ 4,24,20,4,22,0,{0.25,0.25,0.25},4,{0.35,0.35,0.35},
                        "assetBrowserTitleBox","Asset Browser",assetBrowser.boxTitleFont)
    --Create Asset Browser Searching Textbox
    assetBrowser.addTextBox((displayWidth*3.3)/4,67,(displayWidth *0.65/ 4),24,78,8,55,0,{0.12,0.12,0.12},2,
                            {0.05,0.05,0.05},"assetBrowserSearchingTextBox","Search...",assetBrowser.textBoxTextFont)
    
    --Create Icon 1
    assetBrowser.addIcon((displayWidth*3.318)/4,121,26,26,assetBrowser.icon_BgColor,
                            assetBrowser.icon_alpha,"search_off.png","search_onn.png",false)
    --Create Icon 2
    assetBrowser.addIcon((displayWidth*3.743)/4,123,22,22,assetBrowser.icon_BgColor,
                            assetBrowser.icon_alpha,"addition_off.png","addition_onn.png",false)
    --Create Icon 3
    assetBrowser.addIcon((displayWidth*3.801)/4,123,22,22,assetBrowser.icon_BgColor,
                            assetBrowser.icon_alpha,"filterAsset_off.png","filterAsset_onn.png",false)
    --Create Icon 4
    assetBrowser.addIcon((displayWidth*3.865)/4,123,22,22,assetBrowser.icon_BgColor,
                            assetBrowser.icon_alpha,"hamburgerMenu_off.png","hamburgerMenu_onn.png",false)
    
    --Create Option 1
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,78,0,"Animation Curves",
                            assetBrowser.optionValueFont,"option_off.png",20,20)
    --Create Option 2
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,98,0,"Extansions",
                            assetBrowser.optionValueFont,"option_off.png",20,20)
    --Create Option 3
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,118,0,"Fonts",
                            assetBrowser.optionValueFont,"option_off.png",20,20)
    --Create Option 4
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,138,0,"Notes",
                            assetBrowser.optionValueFont,"option_off.png",20,20)
    --Create Option 5
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,158,0,"Objects",
                            assetBrowser.optionValueFont,"option_off.png",20,20)
    --Create Option 6
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,178,0,"Particle Systems",
                            assetBrowser.optionValueFont,"option_off.png",20,20)
    --Create Option 7
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,198,0,"Paths",
                            assetBrowser.optionValueFont,"option_off.png",20,20)
    --Create Option 8
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,218,0,"Rooms",
                            assetBrowser.optionValueFont,"option_off.png",20,20)
    --Create Option 9
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,238,0,"Sequences",
                            assetBrowser.optionValueFont,"option_off.png",20,20)
    --Create Option 10
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,258,0,"Scripts",
                            assetBrowser.optionValueFont,"option_off.png",20,20)
    --Create Option 11
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,278,0,"Shaders",
                            assetBrowser.optionValueFont,"option_off.png",20,20)
    --Create Option 12
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,298,0,"Sounds",
                            assetBrowser.optionValueFont,"option_off.png",20,20)
    --Create Option 13
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,318,0,"Sprites",
                            assetBrowser.optionValueFont,"option_off.png",20,20)
    --Create Option 14
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,338,0,"Tile Sets",
                            assetBrowser.optionValueFont,"option_off.png",20,20)
    --Create Option 15
    assetBrowser.addOption((displayWidth*3.3)/4, 67, (displayWidth*0.7/4), 20, 20,12,358,0,"Timelines",
                            assetBrowser.optionValueFont,"option_off.png",20,20)

    
end


function assetBrowser.update()
    displayWidth , displayHeight = love.graphics.getWidth(), love.graphics.getHeight()
    assetBrowser.load()
end

function assetBrowser.draw()
    for _, container    in ipairs(assetBrowser.containers)  do  container:draw()    end
    for _, box          in ipairs(assetBrowser.boxes)       do box:draw()           end
    for _, textbox      in ipairs(assetBrowser.textboxes)   do textbox:draw()       end
    for _, icon         in ipairs(assetBrowser.icons)       do icon:draw()          end
    for _, option       in ipairs(assetBrowser.options)     do option:draw()        end
    love.graphics.setColor(1,1,1)
    love.graphics.newFont(12)
    love.graphics.printf(assetBrowser.options.optionCount.." Items",(displayWidth*3.328 )/ 4, displayHeight/ 1.116,100)

    
end


function assetBrowser.mousepressed()
    
end

function assetBrowser.addContainer(x,y,w,h,pr,pl,pt,pb,bgColor,borderWidth,borderColor,name)
    table.insert(assetBrowser.containers, ui.createContainer(
     {   x = x,              y= y,               width = w,          height = h, 
         padding_right = pr, padding_left = pl,  padding_top = pt ,  padding_bottom = pb,
         bg_color = bgColor, border = {border_width = borderWidth,   border_color = borderColor},    name  = name,
     }))
end

function assetBrowser.addBox(x,y,w,h,pr,pl,pt,pb,bgColor,borderWidth,borderColor,name,title,titleFont)
    table.insert(assetBrowser.boxes, ui.createBox(
            {   x = x,              y= y,              width = w,         height = h,
                padding_right = pr, padding_left = pl, padding_top = pt , padding_bottom = pb,
                bg_color = bgColor, border = { border_width = borderWidth, border_color = borderColor},
                name  = name,       title = title,     titleFont = titleFont
            }))
end

function assetBrowser.addTextBox(x,y,w,h,pr,pl,pt,pb,bgColor,borderWidth,borderColor,name,placeholder,
    textFont)
    table.insert(assetBrowser.textboxes, ui.createTextBox(
            {   x = x,              y= y,               width = w,          height = h,
                padding_right = pr, padding_left = pl,  padding_top = pt ,  padding_bottom = pb,
                bg_color = bgColor, border = { border_width = borderWidth,  border_color = borderColor},
                name  = name,       placeholder = placeholder,    textFont = textFont,
            }))
end

function assetBrowser.addIcon(x,y,w,h,bgColor,alpha,iconOff,iconOnn,hovered)
    table.insert(assetBrowser.icons, ui.createIcon(
        {   x = x,     y = y,  width = w,  height = h, bgColor = bgColor,  alpha = alpha,
            icon_off = love.graphics.newImage(assetBrowser.img_File_PATH .. iconOff),
            icon_onn = love.graphics.newImage(assetBrowser.img_File_PATH .. iconOnn)
        }))
end

function assetBrowser.addOption(x,y,w,h,pr,pl,pt,pb,value,valueFont,iconImg,iconWidth,iconHeight)

    assetBrowser.options.optionCount, newOption = ui.createOption(assetBrowser.options.optionCount, 
    {
        x = x,            y = y,                width = w,      height = h, 
        padding_right = pr, padding_left  = pl, padding_top = pt, padding_bottom = pb,  value = value,
        valueFont =valueFont,  
        icon = { 
            image = love.graphics.newImage(assetBrowser.img_File_PATH .. iconImg), 
            width = iconWidth, 
            height = iconHeight
        }
    })
    table.insert(assetBrowser.options, newOption)
end




return assetBrowser