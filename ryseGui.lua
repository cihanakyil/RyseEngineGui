ui = require("ui")
local ryseGui = {
    containers = {},
    boxes = {},
    textboxes = {},
    icons = {},
    assetOptions={
        optionCount = 0,
    },
    tabs = {},
}

function ryseGui.load(displayWidth,displayHeight)
    ryseGui.containers = {}
    ryseGui.boxes = {}
    ryseGui.textboxes = {}
    ryseGui.icons={}
    ryseGui.assetOptions ={optionCount = 0,}
    ryseGui.tabs = {}

  
    
    --Create WorkSpace Container (WorkSpace Container Olusturma)
   table.insert(ryseGui.containers, ui.createContainer(
            {
                x = (displayWidth/4),
                y= 67, 
                width = (displayWidth *2.3 )/ 4,
                height = displayHeight - 235,
                padding_right = 0,
                padding_left = 2,
                padding_top = 2 ,
                padding_bottom = 0,
                bg_color = {0.15,0.15,0.15},
                bg_image = love.graphics.newImage("img/background.png"),
                name  = "workSpace"
            }
        )
    )

    --Create Footer Container (WorkSpace Container Olusturma)
   table.insert(ryseGui.containers, ui.createContainer(
    {
        x = (displayWidth/4),
        y= 67 + displayHeight - 235, 
        width = (displayWidth *2.3 )/ 4,
        height = displayHeight /4.30,
        padding_right = 0,
        padding_left = 2,
        padding_top = 2 ,
        padding_bottom = 0,
        bg_color = {0.15,0.15,0.15},
        name  = "footer"
    }
)
)

    --Create Inspector Container (Inspector Container Olusturma)
    table.insert(ryseGui.containers, ui.createContainer(
            {
                x = 0,
                y= 67, 
                width = displayWidth / 4,
                height = displayHeight / 1.116,
                padding_right = 18,
                padding_left = 18,
                padding_top = 2 ,
                padding_bottom = 0,
                bg_color = {0.15,0.15,0.15},
                border = {
                    border_width = 7,
                    border_color = {0.25,0.25,0.25}
                },
                name  = "Inspector",
            }
        )
    )

    
    --Create Inspector TitleBox
    table.insert(ryseGui.boxes, ui.createBox(
            {
                x = 0,
                y= 67, 
                width = displayWidth / 4,
                height = 24,
                padding_right = 18,
                padding_left = 18,
                padding_top = 22 ,
                padding_bottom = 0,
                bg_color = {0.25,0.25,0.25},
                border = {
                    border_width = 4,
                    border_color = {0.35,0.35,0.35}
                },
                name  = "InspectorTitleBox",
                title = "Inspector",
                titleFont = love.graphics.newFont(16)
            }
        )
    )

    --Create Inspector Searching Textbox
    table.insert(ryseGui.textboxes, ui.createTextBox(
            {
                x = 0,
                y= 67, 
                width = (displayWidth / 4),
                height = 24,
                padding_right = 78,
                padding_left = 28,
                padding_top = 55 ,
                padding_bottom = 0,
                bg_color = {0.12,0.12,0.12},
                border = {
                    border_width = 2,
                    border_color = {0.05,0.05,0.05}
                },
                name  = "InspectorSearchingeTextBox",
                placeholder = "Search...",
                textFont = love.graphics.newFont(12),
                searchingResultNumbers = 0,
                searchingFindingNumbers = 0,
            }
        )
    )
    
    table.insert(ryseGui.icons, ui.createIcon(
            {
                x = (displayWidth / 4) - 110,
                y= 67, 
                width = 32,
                height = 32,
                padding_right = 78,
                padding_left = 28,
                padding_top = 60 ,
                padding_bottom = 0,
                image_off = love.graphics.newImage("img/icon/upIcon_off.png"),
                image_onn = love.graphics.newImage("img/icon/upIcon_onn.png"),
                isActive = false

            }
        )
    )

    table.insert(ryseGui.icons, ui.createIcon(
            {
                x = (displayWidth / 4) - 88,
                y= 67, 
                width = 32,
                height = 32,
                padding_right = 78,
                padding_left = 28,
                padding_top = 60 ,
                padding_bottom = 0,
                image_off = love.graphics.newImage("img/icon/downIcon_off.png"),
                image_onn = love.graphics.newImage("img/icon/downIcon_onn.png"),
                isActive = false

            }
        )
    )

    table.insert(ryseGui.icons, ui.createIcon(
        {
            x = (displayWidth / 4) - 58,
            y= 67, 
            width = 32,
            height = 60,
            padding_right = 78,
            padding_left = 28,
            padding_top = 54 ,
            padding_bottom = 0,
            image_off = love.graphics.newImage("img/icon/lock_off.png"),
            image_onn = love.graphics.newImage("img/icon/lock_onn.png"),
            isActive = false

        }
    )
)

table.insert(ryseGui.icons, ui.createIcon(
        {
            x = (displayWidth / 4) - 34,
            y= 67, 
            width = 32,
            height = 64,
            padding_right = 78,
            padding_left = 28,
            padding_top = 54 ,
            padding_bottom = 0,
            image_off = love.graphics.newImage("img/icon/filter_Inspector_off.png"),
            image_onn = love.graphics.newImage("img/icon/filter_Inspector_onn.png"),
            isActive = false

        }
    )
)



     --Create AssetBrowser Container 
    table.insert(ryseGui.containers, ui.createContainer(
            {
                x = (displayWidth + displayWidth *2.3 )/ 4,
                y= 67, 
                width = displayWidth *0.7 / 4,
                height = displayHeight / 1.116,
                padding_right = 20,
                padding_left = 4,
                padding_top = 2 ,
                padding_bottom = 0,
                bg_color = {0.15,0.15,0.15},
                border = {
                    border_width = 7,
                    border_color = {0.25,0.25,0.25}
                },
                name  = "assetBrowser"
            }
        )
    )

    --Create AssetBrowser TitleBox
    table.insert(ryseGui.boxes, ui.createBox(
            {
                x = (displayWidth + displayWidth *2.3 )/ 4,
                y= 67, 
                width = displayWidth *0.7 / 4,
                height = 24,
                padding_right = 20,
                padding_left = 4,
                padding_top = 22 ,
                padding_bottom = 0,
                border = {
                    border_width = 4,
                    border_color = {0.35,0.35,0.35}
                },
                bg_color = {0.25,0.25,0.25},
                name  = "AssetBrowserTitleBox",
                title = "Asset Browser",
                titleFont = love.graphics.newFont(16)
            }
        )
    )

     --Create AssetBrowser Searching Textbox
     table.insert(ryseGui.textboxes, ui.createTextBox(
        {
            x = (displayWidth + displayWidth *2.3 )/ 4,
            y= 67, 
            width = displayWidth *0.65 / 4,
            height = 24,
            padding_right = 78,
            padding_left = 8,
            padding_top = 55 ,
            padding_bottom = 0,
            bg_color = {0.12,0.12,0.12},
            border = {
                border_width = 2,
                border_color = {0.05,0.05,0.05}
            },
            name  = "InspectorSearchingeTextBox",
            placeholder = "Search...",
            textFont = love.graphics.newFont(12)
        }
    )
)

table.insert(ryseGui.icons, ui.createIcon(
        {
            x = (displayWidth + displayWidth *2.3 )/ 4,
            y= 67, 
            width = 32,
            height = 64,
            padding_right = 78,
            padding_left = 4,
            padding_top = 54 ,
            padding_bottom = 0,
            image_off = love.graphics.newImage("img/icon/search_off.png"),
            image_onn = love.graphics.newImage("img/icon/search_onn.png"),
            isActive = false,
            rotationAngle = -1.5

        }
    )
)

table.insert(ryseGui.icons, ui.createIcon(
        {
            x = (displayWidth + displayWidth *2.3 )/ 4,
            y= 67, 
            width = 32,
            height = 58,
            padding_right = 78,
            padding_left = 170,
            padding_top = 54 ,
            padding_bottom = 0,
            image_off = love.graphics.newImage("img/icon/addition_off.png"),
            image_onn = love.graphics.newImage("img/icon/addition_onn.png"),
            isActive = false,

        }
    )
)

table.insert(ryseGui.icons, ui.createIcon(
        {
            x = (displayWidth + displayWidth *2.3 )/ 4,
            y= 67, 
            width = 36,
            height = 48,
            padding_right = 78,
            padding_left = 186,
            padding_top = 56,
            padding_bottom = 0,
            image_off = love.graphics.newImage("img/icon/filterAsset_off.png"),
            image_onn = love.graphics.newImage("img/icon/filterAsset_onn.png"),
            isActive = false,
        }
    )
)

table.insert(ryseGui.icons, ui.createIcon(
        {
            x = (displayWidth + displayWidth *2.3 )/ 4,
            y= 67, 
            width = 36,
            height = 44,
            padding_right = 78,
            padding_left = 204,
            padding_top = 58,
            padding_bottom = 0,
            image_off = love.graphics.newImage("img/icon/hamburgerMenu_off.png"),
            image_onn = love.graphics.newImage("img/icon/hamburgerMenu_onn.png"),
            isActive = false,
        }
    )
)


 --Create AssetBrowser Options 1 ++
ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
        x = (displayWidth + displayWidth *2.3 )/ 4,
        y= 67, 
        width = displayWidth *0.7 / 4,
        height = 20,
        padding_right = 20,
        padding_left = 12,
        padding_top = 78 ,
        padding_bottom = 0,
        value = "Animation Curves",
        valueFont = love.graphics.newFont(13),
        icon = {
                
                image =love.graphics.newImage("img/icon/option_off.png"),
                width = 20,
                height = 20
    
            }
    }
)
table.insert(ryseGui.assetOptions,newOption)


 --Create AssetBrowser Options 2 ++
 ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
    x = (displayWidth + displayWidth *2.3 )/ 4,
    y= 67, 
    width = displayWidth *0.7 / 4,
    height = 20,
    padding_right = 20,
    padding_left = 12,
    padding_top = 98 ,
    padding_bottom = 0,
    value = "Extansions",
    valueFont = love.graphics.newFont(13),
    icon = {
            
            image =love.graphics.newImage("img/icon/option_off.png"),
            width = 20,
            height = 20

        }
}
)
table.insert(ryseGui.assetOptions,newOption)
   
 --Create AssetBrowser Options 3 ++
 ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
    x = (displayWidth + displayWidth *2.3 )/ 4,
    y= 67, 
    width = displayWidth *0.7 / 4,
    height = 20,
    padding_right = 20,
    padding_left = 12,
    padding_top = 118 ,
    padding_bottom = 0,
    value = "Fonts",
    valueFont = love.graphics.newFont(13),
    icon = {
            
            image =love.graphics.newImage("img/icon/option_off.png"),
            width = 20,
            height = 20

        }
}
)
table.insert(ryseGui.assetOptions,newOption)

 --Create AssetBrowser Options 4 ++ 
 ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
    x = (displayWidth + displayWidth *2.3 )/ 4,
    y= 67, 
    width = displayWidth *0.7 / 4,
    height = 20,
    padding_right = 20,
    padding_left = 12,
    padding_top = 138 ,
    padding_bottom = 0,
    value = "Notes",
    valueFont = love.graphics.newFont(13),
    icon = {
            
            image =love.graphics.newImage("img/icon/option_off.png"),
            width = 20,
            height = 20

        }
}
)
table.insert(ryseGui.assetOptions,newOption)

 --Create AssetBrowser Options 5 ++
 ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
    x = (displayWidth + displayWidth *2.3 )/ 4,
    y= 67, 
    width = displayWidth *0.7 / 4,
    height = 20,
    padding_right = 20,
    padding_left = 12,
    padding_top = 158 ,
    padding_bottom = 0,
    value = "Objects",
    valueFont = love.graphics.newFont(13),
    icon = {
            
            image =love.graphics.newImage("img/icon/option_off.png"),
            width = 20,
            height = 20

        }
}
)
table.insert(ryseGui.assetOptions,newOption)

 --Create AssetBrowser Options 6 ++
 ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
    x = (displayWidth + displayWidth *2.3 )/ 4,
    y= 67, 
    width = displayWidth *0.7 / 4,
    height = 20,
    padding_right = 20,
    padding_left = 12,
    padding_top = 178 ,
    padding_bottom = 0,
    value = "Particle Systems",
    valueFont = love.graphics.newFont(13),
    icon = {
            
            image =love.graphics.newImage("img/icon/option_off.png"),
            width = 20,
            height = 20

        }
}
)
table.insert(ryseGui.assetOptions,newOption)

 --Create AssetBrowser Options 7 ++
 ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
    x = (displayWidth + displayWidth *2.3 )/ 4,
    y= 67, 
    width = displayWidth *0.7 / 4,
    height = 20,
    padding_right = 20,
    padding_left = 12,
    padding_top = 198 ,
    padding_bottom = 0,
    value = "Paths",
    valueFont = love.graphics.newFont(13),
    icon = {
            
            image =love.graphics.newImage("img/icon/option_off.png"),
            width = 20,
            height = 20

        }
}
)
table.insert(ryseGui.assetOptions,newOption)

 --Create AssetBrowser Options 8 ++
 ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
    x = (displayWidth + displayWidth *2.3 )/ 4,
    y= 67, 
    width = displayWidth *0.7 / 4,
    height = 20,
    padding_right = 20,
    padding_left = 12,
    padding_top = 218 ,
    padding_bottom = 0,
    value = "Rooms",
    valueFont = love.graphics.newFont(13),
    icon = {
            
            image =love.graphics.newImage("img/icon/option_off.png"),
            width = 20,
            height = 20

        }
}
)
table.insert(ryseGui.assetOptions,newOption)

 --Create AssetBrowser Options 9 ++
 ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
    x = (displayWidth + displayWidth *2.3 )/ 4,
    y= 67, 
    width = displayWidth *0.7 / 4,
    height = 20,
    padding_right = 20,
    padding_left = 12,
    padding_top = 238 ,
    padding_bottom = 0,
    value = "Sequences",
    valueFont = love.graphics.newFont(13),
    icon = {
            
            image =love.graphics.newImage("img/icon/option_off.png"),
            width = 20,
            height = 20

        }
}
)
table.insert(ryseGui.assetOptions,newOption)

 --Create AssetBrowser Options 10 ++
 ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
    x = (displayWidth + displayWidth *2.3 )/ 4,
    y= 67, 
    width = displayWidth *0.7 / 4,
    height = 20,
    padding_right = 20,
    padding_left = 12,
    padding_top = 258 ,
    padding_bottom = 0,
    value = "Scripts",
    valueFont = love.graphics.newFont(13),
    icon = {
            
            image =love.graphics.newImage("img/icon/option_off.png"),
            width = 20,
            height = 20

        }
}
)
table.insert(ryseGui.assetOptions,newOption)

 --Create AssetBrowser Options 11 ++
 ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
    x = (displayWidth + displayWidth *2.3 )/ 4,
    y= 67, 
    width = displayWidth *0.7 / 4,
    height = 20,
    padding_right = 20,
    padding_left = 12,
    padding_top = 278 ,
    padding_bottom = 0,
    value = "Shaders",
    valueFont = love.graphics.newFont(13),
    icon = {
            
            image =love.graphics.newImage("img/icon/option_off.png"),
            width = 20,
            height = 20

        }
}
)
table.insert(ryseGui.assetOptions,newOption)

 --Create AssetBrowser Options 12 ++
 ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
    x = (displayWidth + displayWidth *2.3 )/ 4,
    y= 67, 
    width = displayWidth *0.7 / 4,
    height = 20,
    padding_right = 20,
    padding_left = 12,
    padding_top = 298 ,
    padding_bottom = 0,
    value = "Sounds",
    valueFont = love.graphics.newFont(13),
    icon = {
            
            image =love.graphics.newImage("img/icon/option_off.png"),
            width = 20,
            height = 20

        }
}
)
table.insert(ryseGui.assetOptions,newOption)

 --Create AssetBrowser Options 13 ++
 ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
    x = (displayWidth + displayWidth *2.3 )/ 4,
    y= 67, 
    width = displayWidth *0.7 / 4,
    height = 20,
    padding_right = 20,
    padding_left = 12,
    padding_top = 318 ,
    padding_bottom = 0,
    value = "Sprites",
    valueFont = love.graphics.newFont(13),
    icon = {
            
            image =love.graphics.newImage("img/icon/option_off.png"),
            width = 20,
            height = 20

        }
}
)
table.insert(ryseGui.assetOptions,newOption)

 --Create AssetBrowser Options 14 ++
 ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
    x = (displayWidth + displayWidth *2.3 )/ 4,
    y= 67, 
    width = displayWidth *0.7 / 4,
    height = 20,
    padding_right = 20,
    padding_left = 12,
    padding_top = 338 ,
    padding_bottom = 0,
    value = "Tile Sets",
    valueFont = love.graphics.newFont(13),
    icon = {
            
            image =love.graphics.newImage("img/icon/option_off.png"),
            width = 20,
            height = 20

        }
}
)
table.insert(ryseGui.assetOptions,newOption)

 --Create AssetBrowser Options 15 ++
 ryseGui.assetOptions.optionCount, newOption = ui.createOption(ryseGui.assetOptions.optionCount , {
    x = (displayWidth + displayWidth *2.3 )/ 4,
    y= 67, 
    width = displayWidth *0.7 / 4,
    height = 20,
    padding_right = 20,
    padding_left = 12,
    padding_top = 358 ,
    padding_bottom = 0,
    value = "Timelines",
    valueFont = love.graphics.newFont(13),
    icon = {
            
            image =love.graphics.newImage("img/icon/option_off.png"),
            width = 20,
            height = 20

        }
}
)
table.insert(ryseGui.assetOptions,newOption)



end

local mouseClicked = false
local mouseClickedX = nil
local mouseClickedY = nil

function ryseGui.draw(dw,dh)
    local x,y = love.mouse.getPosition()

    for _, container in ipairs(ryseGui.containers) do
        container:draw()
    end
    
    for _, box in ipairs(ryseGui.boxes) do
        box:draw() 
    end

    for _, textBox in ipairs(ryseGui.textboxes) do
        textBox:draw() 
    end

    for _, icon in ipairs(ryseGui.icons) do
        icon:draw() 
    end

    for _, assetOption in ipairs(ryseGui.assetOptions) do
        assetOption:draw() 
    end
    love.graphics.setColor(1,1,1)
    love.graphics.newFont(12)
    love.graphics.printf(ryseGui.assetOptions.optionCount.." Items",(dw*3.328 )/ 4, dh / 1.116,100)
    
end

function ryseGui.update()   end


function ryseGui.mousepressed(x,y,button)
    if button == 1 then        
        buttonClicked = not buttonClicked
        mouseClickedX = x 
        mouseClickedY = y
    end
end


return ryseGui 


