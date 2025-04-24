ui = require("ui")

local menu = {
    menuFont = love.graphics.newFont(14),
    submenuFont = love.graphics.newFont(12),
    containers ={},
    items = {},
    opened = false
}

local displayWidth , displayHeight = nil,nil

function menu.load()
      --Create Menu 1 
      menu.addMenu(0,0,60,25,"File",menu.menuFont,false,false,false,230,25,false,nil,menu.submenuFont,
      {   {name = "New Project",shortcut = "CTRL+N", x =nil, y=nil},
          {name = "Open Project",shortcut = "CTRL+O", x =nil, y=nil},
          {name = "Import Project",shortcut = nil, x =nil, y=nil},
          {name = "Recent Project",shortcut = nil, x =nil, y=nil},
          {name = "Save Project",shortcut = "CTRL+S", x =nil, y=nil},
          {name = "Save Project As",shortcut = "CTRL+SHIFT+S", x =nil, y=nil},
          {name = "Export Project",shortcut = nil, x =nil, y=nil},
          {name = "New IDE",shortcut = nil,x =nil, y=nil},
          {name = "Preferences",shortcut = "CTRL+SHIFT+P", x =nil, y=nil},
          {name = "Exit",shortcut = nil, x =nil, y=nil},
      })
      --Create Menu 2 
      menu.addMenu(60,0,60,25,"Edit",menu.menuFont,false,false,false,230,25,false,nil,menu.submenuFont,
      {   {name = "Undo",shortcut = "CTRL+Z", x =nil, y=nil},
          {name = "Redo",shortcut = "CTRL+Y", x =nil, y=nil},
          {name = "Search & Replace",shortcut = "CTRL+SHIFT+F", x =nil, y=nil}
      })
      --Create Menu 3 
      menu.addMenu(120,0,60,25,"Build",menu.menuFont,false,false,false,230,25,false,nil,menu.submenuFont,
      {   {name = "Run",shortcut = "F5", x =nil, y=nil},
          {name = "Debug",shortcut = "F6", x =nil, y=nil},
          {name = "Re-Run",shortcut = nil , x =nil, y=nil},
          {name = "Clean",shortcut = "CTRL+F7", x =nil, y=nil},
          {name = "Clean Code ",shortcut = nil, x =nil, y=nil},
          {name = "Clean Graphics",shortcut = nil, x =nil, y=nil },
          {name = "Clean Audio",shortcut = nil, x =nil, y=nil},
          {name = "Create Executable",shortcut = "CTRL+F8", x =nil, y=nil},
          {name = "Create Executable and Launch",shortcut = nil, x =nil, y=nil}
      })
      --Create Menu 4 
      menu.addMenu(180,0,90,25,"Windows",menu.menuFont,false,false,false,230,25,false,nil,menu.submenuFont,
      {   {name = "Asset Browser",shortcut = nil, x =nil, y=nil},
          {name = "Output",shortcut = nil, x =nil, y=nil},
          {name = "Search Result",shortcut = nil , x =nil, y=nil},
          {name = "Source Control Output",shortcut = nil, x =nil, y=nil},
          {name = "Breakpoints ",shortcut = nil, x =nil, y=nil},
          {name = "Compile Errors",shortcut = nil , x =nil, y=nil},
          {name = "Feather Messages",shortcut = nil, x =nil, y=nil},
          {name = "Inspector",shortcut = nil, x =nil, y=nil},
          {name = "Recent Windows",shortcut = nil, x =nil, y=nil},
          {name = "IDE Environment Variables",shortcut = nil, x =nil, y=nil},
          {name = "Project Tool Output",shortcut = nil, x =nil, y=nil},
      })
      --Create Menu 5 
      menu.addMenu(270,0,60,25,"Tools",menu.menuFont,false,false,false,230,25,false,nil,menu.submenuFont,
      {   {name = "Texture Groups",shortcut = nil, x =nil, y=nil},
          {name = "Audio Groups",shortcut = nil, x =nil, y=nil},
          {name = "Sound Mixer",shortcut = nil , x =nil, y=nil},
      })
      --Create Menu 6 
      menu.addMenu(330,0,110,25,"MarketPlace",menu.menuFont,false,true,false,nil,nil,nil,nil,nil,nil)
      --Create Menu 7 
      menu.addMenu(440,0,80,25,"Layouts",menu.menuFont,false,false,false,230,25,false,nil,menu.submenuFont,
      {   {name = "Save Layout",shortcut = nil, x =nil, y=nil},
          {name = "Load Layout",shortcut = nil, x =nil, y=nil},
          {name = "Reset Layout",shortcut = nil , x =nil, y=nil},
          {name = "Show All Windows",shortcut = nil , x =nil, y=nil},
          {name = "Close All Windows",shortcut = nil , x =nil, y=nil},
      })
      --Create Menu 8 
      menu.addMenu(520,0,60,25,"Help",menu.menuFont,false,false,false,230,25,false,nil,menu.submenuFont,
      {   {name = "Open Manual",shortcut = "F1", x =nil, y=nil},
          {name = "Knowledge Base",shortcut = nil, x =nil, y=nil},
          {name = "Contact Us",shortcut = nil , x =nil, y=nil},
          {name = "Upload a Bug/Ticket Sample",shortcut = nil , x =nil, y=nil},
          {name = "Report a RyseEngine Bug",shortcut = nil, x =nil, y=nil},
          {name = "Open Log in Explorer",shortcut = nil , x =nil, y=nil},
          {name = "Releases Notes",shortcut = nil , x =nil, y=nil},
          {name = "Required SDKs",shortcut = nil, x =nil, y=nil},
          {name = "Open Project in Explorer",shortcut = nil , x =nil, y=nil},
          {name = "Refresh System Fonts",shortcut = nil, x =nil, y=nil},
          {name = "Licenses",shortcut = nil , x =nil, y=nil},
          {name = "Check for Updates",shortcut = nil , x =nil, y=nil},
          {name = "About",shortcut = nil , x =nil, y=nil},
      })
      --Create Menu 9 
      menu.addMenu(580,0,125,25,"Source Control",menu.menuFont,false,false,false,230,25,false,nil,menu.submenuFont,
      {
          {name = "Create Project Repository",shortcut = nil, x =nil, y=nil},
          {name = "Clone Repository",shortcut = nil, x =nil, y=nil},
          {name = "Commit Changes",shortcut = nil , x =nil, y=nil},
          {name = "Push Changes",shortcut = nil , x =nil, y=nil},
          {name = "Pull Changes",shortcut = nil, x =nil, y=nil},
          {name = "View History",shortcut = nil, x =nil, y=nil},
          {name = "Show Conflicts",shortcut = nil , x =nil, y=nil}
      })
  
end

function menu.update()
    displayWidth , displayHeight = love.graphics.getWidth(), love.graphics.getHeight()
    --Create MenuBar 
    menu.addContainer(0, 0, displayWidth, 25, 0, 0 ,0 ,0 , {0.15,0.15,0.15}, "menubar")
    
end

function menu.draw()
    local x,y = love.mouse.getPosition()
    for _, container in ipairs(menu.containers) do  container:draw()    end
    for _, menu in ipairs(menu.items) do    menu:draw()     end


    for i, item in ipairs(menu.items) do
        -- Hovered Control
        if x >= item.x and x <= item.x + item.width and y>=item.y and y<= item.y + item.height then
            item.hovered = true
            -- Automatic switching if we hover to a different menu while another menu is open
            if menu.opened and not item.open then
                -- Close all menus
                for _, it in ipairs(menu.items) do
                    it.open = false
                end
                -- Open this menu
                item.open = true
            end
        else
            item.hovered = false
        end

        --Submenu Hovered Control  
        if item.open and menu.opened then
            item.submenus.submenuHovered = false
            item.submenus.submenuHoveredIndex = nil
            for j, subitem in ipairs(item.submenus.menus) do
                if subitem.x and subitem.y and x >= subitem.x and x <= subitem.x + item.submenus.width 
                    and y >= subitem.y and y<= subitem.y + item.submenus.height then
                        item.submenus.submenuHovered = true
                        item.submenus.submenuHoveredIndex = j
                        break   
                end
            end
        end
    end

    
  
end

function menu.addContainer(x,y,w,h,pr,pl,pt,pb,bg_color,name)
    table.insert(menu.containers, ui.createContainer(
            {               x = x  ,               y = y  , 
                        width = w  ,          height = h  ,
                padding_right = pr ,    padding_left = pl ,    
                  padding_top = pt ,  padding_bottom = pb ,
                     bg_color = bg_color ,           name  = name
            }
        )
    )
end

function menu.addMenu(x,y,w,h,name,menuFont,open,disabled,hovered,
    submenusWidth,submenusHeight,submenuHovered,submenuHoveredIndex,submenuFont,menuItems)

    table.insert(menu.items, ui.createMenu(
    {   
        x = x ,  
        y = y , 
        width = w ,  
        height = h ,
        name = name , 
        menuFont = menuFont,
        open = open or false,       
        disabled = disabled or false,         
        hovered = hovered or false,
        submenus = nil or
                { 
                    width = submenusWidth or 0,    
                    height = submenusHeight or 0,  
                    submenuHovered = submenuHovered or false, 
                    submenuHoveredIndex = submenuHoveredIndex or nil,
                    submenuFont = submenuFont,    
                    menus = menuItems or {}
                }
    }
 )   
)

end

function menu.mousepressed(x,y,button)

    if button == 1 then
        local anyItemOpened = false
        for i,item in ipairs(menu.items) do
            if not item.disabled and (x >= item.x and x <= item.x + item.width 
            and y>= item.y and y<= item.y + item.height) then
                item.open = true
                anyItemOpened = true
            end

            if not (x >= item.x and x <= item.x + item.width 
            and y>= item.y and y<= item.y + item.height) then
                item.open = false
            end
        end
        menu.opened = anyItemOpened
        
    end
    
end

return menu