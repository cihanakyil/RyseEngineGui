ui = require("ui")
local ryseGui = {
    containers = {},
    boxes = {},
    textboxes = {},
    icons = {},
    assetOptions={
        optionCount = 0,
    },
    menuItems={},
    iconBarItems = {},

}



function ryseGui.load(displayWidth,displayHeight)

    ryseGui.containers = {}
    ryseGui.boxes = {}
    ryseGui.textboxes = {}
    ryseGui.icons={}
    ryseGui.assetOptions ={optionCount = 0,}
    ryseGui.menuItems = {}
    ryseGui.iconBarItems = {}

    --Create MenuBar (MenuBar Olusturma)
    table.insert(ryseGui.containers, ui.createContainer(
            {
                x = 0,
                y= 0, 
                width = displayWidth,
                height = 25,
                padding_right = 0,
                padding_left = 0,
                padding_top = 0 ,
                padding_bottom = 0,
                bg_color = {0.15,0.15,0.15},
                name  = "menuBar"
            }
        )
    )
    
   -- Create IconBar (IconBar Olusturma)
    table.insert(ryseGui.containers, ui.createContainer(
            {
                x = 0,
                y= 25, 
                width = displayWidth,
                height = 40,
                padding_right = 0,
                padding_left = 0,
                padding_top = 2 ,
                padding_bottom = 0,
                bg_color = {0.15,0.15,0.15},
                name  = "iconBar"
            }
        )
    )
    
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

--Create Menu 1 + 
table.insert(ryseGui.menuItems, ui.createMenu(
            {
                x = 0,
                y = 0,
                width = 60,
                height = 25,
                name = "File",
                submenus= {
                     {name = "New Project",shortcut = "CTRL+N"},
                     {name = "Open Project",shortcut = "CTRL+O"},
                     {name = "Import Project",shortcut = nil},
                     {name = "Recent Project",shortcut = nil},
                     {name = "Save Project",shortcut = "CTRL+S"},
                     {name = "Save Project As",shortcut = "CTRL+SHIFT+S"},
                     {name = "Export Project",shortcut = nil},
                     {name = "New IDE",shortcut = nil},
                     {name = "Preferences",shortcut = "CTRL+SHIFT+P"},
                     {name = "Exit",shortcut = nil},
                },
                menuFont = love.graphics.newFont(14),
                submenuFont = love.graphics.newFont(12),
                open = false,
                disabled = false,
                hovered = false


            }
        )
    )
--Create Menu 2 + 
    table.insert(ryseGui.menuItems, ui.createMenu(
        {
            x = 60,
            y = 0,
            width = 60,
            height = 25,
            name = "Edit",
            submenus= {
                 {name = "Undo",shortcut = "CTRL+Z"},
                 {name = "Redo",shortcut = "CTRL+Y"},
                 {name = "Search & Replace",shortcut = "CTRL+SHIFT+F"},
            },
            menuFont = love.graphics.newFont(14),
            submenuFont = love.graphics.newFont(12),
            open = false,
            disabled = false,
            hovered = false


        }
    )
)

--Create Menu 3 + 
table.insert(ryseGui.menuItems, ui.createMenu(
    {
        x = 120,
        y = 0,
        width = 60,
        height = 25,
        name = "Build",
        submenus= {
             {name = "Run",shortcut = "F5"},
             {name = "Debug",shortcut = "F6"},
             {name = "Re-Run",shortcut = nil },
             {name = "Clean",shortcut = "CTRL+F7"},
             {name = "Clean Code ",shortcut = nil},
             {name = "Clean Graphics",shortcut = nil },
             {name = "Clean Audio",shortcut = nil},
             {name = "Create Executable",shortcut = "CTRL+F8"},
             {name = "Create Executable and Launch",shortcut = nil}
             
        },
        menuFont = love.graphics.newFont(14),
        submenuFont = love.graphics.newFont(12),
        open = false,
        disabled = false,
        hovered = false


    }
)
)

--Create Menu 4 + 
table.insert(ryseGui.menuItems, ui.createMenu(
    {
        x = 180,
        y = 0,
        width = 90,
        height = 25,
        name = "Windows",
        submenus= {
             {name = "Asset Browser",shortcut = nil},
             {name = "Output",shortcut = nil},
             {name = "Search Result",shortcut = nil },
             {name = "Source Control Output",shortcut = nil},
             {name = "Breakpoints ",shortcut = nil},
             {name = "Compile Errors",shortcut = nil },
             {name = "Feather Messages",shortcut = nil},
             {name = "Inspector",shortcut = nil},
             {name = "Recent Windows",shortcut = nil},
             {name = "IDE Environment Variables",shortcut = nil},
             {name = "Project Tool Output",shortcut = nil},

             
        },
        menuFont = love.graphics.newFont(14),
        submenuFont = love.graphics.newFont(12),
        open = false,
        disabled = false,
        hovered = false


    }
)
)

--Create Menu 5 + 
table.insert(ryseGui.menuItems, ui.createMenu(
    {
        x = 270,
        y = 0,
        width = 60,
        height = 25,
        name = "Tools",
        submenus= {
             {name = "Texture Groups",shortcut = nil},
             {name = "Audio Groups",shortcut = nil},
             {name = "Sound Mixer",shortcut = nil },
        },
        menuFont = love.graphics.newFont(14),
        submenuFont = love.graphics.newFont(12),
        open = false,
        disabled = false,
        hovered = false


    }
)
)

--Create Menu 6 + 
table.insert(ryseGui.menuItems, ui.createMenu(
    {
        x = 330,
        y = 0,
        width = 110,
        height = 25,
        name = "MarketPlace",
        submenus= nil , 
        menuFont = love.graphics.newFont(14),
        submenuFont = love.graphics.newFont(12),
        open = false,
        disabled = true,
        hovered = false


    }
)
)


--Create Menu 7 + 
table.insert(ryseGui.menuItems, ui.createMenu(
    {
        x = 440,
        y = 0,
        width = 80,
        height = 25,
        name = "Layouts",
        submenus= {
             {name = "Save Layout",shortcut = nil},
             {name = "Load Layout",shortcut = nil},
             {name = "Reset Layout",shortcut = nil },
             {name = "Show All Windows",shortcut = nil },
             {name = "Close All Windows",shortcut = nil },

        },
        menuFont = love.graphics.newFont(14),
        submenuFont = love.graphics.newFont(12),
        open = false,
        disabled = false,
        hovered = false

    }
)
)

--Create Menu 8 + 
table.insert(ryseGui.menuItems, ui.createMenu(
    {
        x = 520,
        y = 0,
        width = 60,
        height = 25,
        name = "Help",
        submenus= {
             {name = "Open Manual",shortcut = "F1"},
             {name = "Knowledge Base",shortcut = nil},
             {name = "Contact Us",shortcut = nil },
             {name = "Upload a Bug/Ticket Sample",shortcut = nil },
             {name = "Report a RyseEngine Bug",shortcut = nil },
             {name = "Open Log in Explorer",shortcut = nil },
             {name = "Releases Notes",shortcut = nil },
             {name = "Required SDKs",shortcut = nil },
             {name = "Open Project in Explorer",shortcut = nil },
             {name = "Refresh System Fonts",shortcut = nil },
             {name = "Licenses",shortcut = nil },
             {name = "Check for Updates",shortcut = nil },
             {name = "About",shortcut = nil },


        },
        menuFont = love.graphics.newFont(14),
        submenuFont = love.graphics.newFont(12),
        open = false,
        disabled = false,
        hovered = false

    }
)
)

--Create Menu 9 + 
table.insert(ryseGui.menuItems, ui.createMenu(
    {
        x = 580,
        y = 0,
        width = 125,
        height = 25,
        name = "Source Control",
        submenus= {
             {name = "Create Project Repository",shortcut = nil},
             {name = "Clone Repository",shortcut = nil},
             {name = "Commit Changes",shortcut = nil },
             {name = "Push Changes",shortcut = nil },
             {name = "Pull Changes",shortcut = nil },
             {name = "View History",shortcut = nil },
             {name = "Show Conflicts",shortcut = nil },


        },
        menuFont = love.graphics.newFont(14),
        submenuFont = love.graphics.newFont(12),
        open = false,
        disabled = false,
        hovered = false

    }
)
)

-- Create IconBar Items 1 ++
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 1,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/home_off.png"),
            icon_onn = love.graphics.newImage("img/icon/home_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 2 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 81,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/file_off.png"),
            icon_onn = love.graphics.newImage("img/icon/file_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 3 + 
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 112,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/assetFolder_off.png"),
            icon_onn = love.graphics.newImage("img/icon/assetFolder_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 4 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 143,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/save_off.png"),
            icon_onn = love.graphics.newImage("img/icon/save_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 5 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 223,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/importTop_off.png"),
            icon_onn = love.graphics.newImage("img/icon/importTop_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 6 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 254,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/importRight_off.png"),
            icon_onn = love.graphics.newImage("img/icon/importRight_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 7 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 334,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/bug_off.png"),
            icon_onn = love.graphics.newImage("img/icon/bug_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 8 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 365,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/run_off.png"),
            icon_onn = love.graphics.newImage("img/icon/run_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 9 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 396,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/stop_off.png"),
            icon_onn = love.graphics.newImage("img/icon/stop_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 10 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 427,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/paint_off.png"),
            icon_onn = love.graphics.newImage("img/icon/paint_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 11 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 507,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/setting_off.png"),
            icon_onn = love.graphics.newImage("img/icon/setting_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 12  +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 538,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/question_off.png"),
            icon_onn = love.graphics.newImage("img/icon/question_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 13 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 618,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/zoomOut_off.png"),
            icon_onn = love.graphics.newImage("img/icon/zoomOut_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 14 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 649,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/zoomMatch_off.png"),
            icon_onn = love.graphics.newImage("img/icon/zoomMatch_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 15 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 680,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/zoomIn_off.png"),
            icon_onn = love.graphics.newImage("img/icon/zoomIn_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 16  +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 711,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/dropdown_off.png"),
            icon_onn = love.graphics.newImage("img/icon/dropdown_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 17 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = 791,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/laptop_off.png"),
            icon_onn = love.graphics.newImage("img/icon/laptop_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 18 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = displayWidth - 61,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/user_off.png"),
            icon_onn = love.graphics.newImage("img/icon/user_onn.png"),
            hovered = false,

        }   
    )
)

-- Create IconBar Items 19 +
table.insert(ryseGui.iconBarItems, ui.createIconBarItems(
        {   
            x = displayWidth - 30,
            y = 34 ,
            width = 30,
            height = 28,
            bgColor = {0.3,0.3,0.3},
            alpha = 0.3,
            icon_off = love.graphics.newImage("img/icon/message_off.png"),
            icon_onn = love.graphics.newImage("img/icon/message_onn.png"),
            hovered = false,

        }   
    )
)



end

local mouseClicked = false
local mouseClickedX = nil
local mouseClickedY = nil

function ryseGui.draw(dw,dh)
    local x,y = love.mouse.getPosition()

    for _, container in ipairs(ryseGui.containers) do
        container:draw() -- Her container'ın draw fonksiyonunu çağır
    end
    
    for _, box in ipairs(ryseGui.boxes) do
        box:draw() -- Her container'ın draw fonksiyonunu çağır
    end

    for _, textBox in ipairs(ryseGui.textboxes) do
        textBox:draw() -- Her container'ın draw fonksiyonunu çağır
    end

    for _, icon in ipairs(ryseGui.icons) do
        icon:draw() -- Her container'ın draw fonksiyonunu çağır
    end

    for _, assetOption in ipairs(ryseGui.assetOptions) do
        assetOption:draw() -- Her container'ın draw fonksiyonunu çağır
    end
    love.graphics.setColor(1,1,1)
    love.graphics.newFont(12)
    love.graphics.printf(ryseGui.assetOptions.optionCount.." Items",(dw*3.328 )/ 4, dh / 1.116,100)
    

    for i, item in ipairs(ryseGui.iconBarItems) do
        if x >= item.x and x <= item.x + item.width and y>=item.y and y<= item.y + item.height  then
            item.hovered = not item.hovered
        end
    end

    for _, iconBarItem in ipairs(ryseGui.iconBarItems) do
        iconBarItem:draw() 
    end


    if buttonClicked then
        for i,item in ipairs(ryseGui.menuItems) do
        
            if not item.disabled and mouseClickedX >= item.x and mouseClickedX <= item.x + item.width 
            and mouseClickedY>= item.y and mouseClickedY<= item.y + item.height then
                item.open = not item.open
            end
        end
    end
    

    for i, item in ipairs(ryseGui.menuItems) do
        if x >= item.x and x <= item.x + item.width and y>=item.y and y<= item.y + item.height  then
            item.hovered = not item.hovered
        end
    end

    for _, menuitem in ipairs(ryseGui.menuItems) do
        menuitem:draw() -- Her container'ın draw fonksiyonunu çağır
    end
   


end

function ryseGui.update()
   
   
    
end


function ryseGui.mousepressed(x,y,button)
    
    if button == 1 then        
        buttonClicked = not buttonClicked
        mouseClickedX = x 
        mouseClickedY = y
    end
end


return ryseGui 


