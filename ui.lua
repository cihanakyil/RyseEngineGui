local ui = {}

function ui.createContainer(params)
    params = params or {}
    return 
    { 
        --Variables / Attributes
        x = params.x + params.padding_left, 
        y = params.y + params.padding_top,
        width = params.width - params.padding_right,
        height = params.height - params.padding_bottom, 
        bg_color = params.bg_color or {1,1,1} ,
        bg_image = params.bg_image or nil,
        name = params.name or "undefined",
        border = params.border or nil,
        --- Function 
        draw = function(self)
            love.graphics.setScissor(self.x,self.y,self.width,self.height)
            love.graphics.setColor(self.bg_color)
            love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
            love.graphics.setColor(1,1,1)
            if self.bg_image then
                -- Resmi container boyutlarına ölçeklendir
                local imgWidth, imgHeight = self.bg_image:getDimensions()
                local scaleX = (self.width - 20) / imgWidth
                local scaleY = (self.height - 40) / imgHeight
                love.graphics.draw(self.bg_image, self.x + 10, self.y + 20, 0, scaleX, scaleY)
            end

            if self.border then
                love.graphics.setColor(self.border.border_color)
                love.graphics.setLineWidth(self.border.border_width)
                love.graphics.rectangle("line", self.x, self.y, self.width,self.height)
            end
            love.graphics.setScissor()
        end
    }
end


function ui.createBox(params)
    params = params or {}
    return 
    { 
        --Variables / Attributes
        x = params.x + params.padding_left, 
        y = params.y + params.padding_top,
        width = params.width - params.padding_right,
        height = params.height - params.padding_bottom, 
        bg_color = params.bg_color or {1,1,1} ,
        name = params.name or "undefined",
        title = params.title or "undefined",
        titleFont = params.titleFont or nil,
        border = params.border or nil,
        --- Function 
        draw = function(self)
            love.graphics.setScissor(self.x,self.y,self.width,self.height)

            love.graphics.setColor(self.bg_color)
            love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)

            if self.title then
                love.graphics.setColor(1,1,1)
                love.graphics.setFont(self.titleFont)
                love.graphics.printf(self.title, self.x + 12,self.y + 2,self.width,"left")
            end

            if self.border then
                love.graphics.setColor(self.border.border_color)
                love.graphics.setLineWidth(self.border.border_width)
                love.graphics.rectangle("line", self.x, self.y, self.width,self.height)
            end

            love.graphics.setScissor()
        end
    }
    
end

function ui.createTextBox(params) 
    params = params or {}

    return{
       --Variables / Attributes
       x = params.x + params.padding_left, 
       y = params.y + params.padding_top,
       width = params.width - params.padding_right,
       height = params.height - params.padding_bottom, 
       bg_color = params.bg_color or {1,1,1} ,
       name = params.name or "undefined",
       text = params.next or nil,
       placeholder = params.placeholder or nil , 
       border = params.border or nil,
       textFont = params.textFont or nil,
       searchingResultNumbers = params.searchingResultNumbers or nil,
       searchingFindingNumbers = params.searchingFindingNumbers or nil,
       --- Function 
       draw = function(self)
           love.graphics.setScissor(self.x,self.y,self.width,self.height)

           love.graphics.setColor(self.bg_color)
           love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)

           if self.border then
               love.graphics.setColor(self.border.border_color)
               love.graphics.setLineWidth(self.border.border_width)
               love.graphics.rectangle("line", self.x, self.y, self.width,self.height)
           end

           if self.text then
            
           else
                love.graphics.setColor(1,1,1,0.3)
                love.graphics.setFont(self.textFont)
                love.graphics.printf(self.placeholder,self.x + 22, self.y + 4,self.width,"left")
           end
           if self.searchingResultNumbers and self.searchingFindingNumbers then
            love.graphics.setColor(1,1,1)
            love.graphics.setFont(self.textFont)
            love.graphics.printf(self.searchingFindingNumbers .."/".. self.searchingResultNumbers,self.x - 61, self.y + 4,self.width,"right")
           end
           
           
           love.graphics.setScissor()
       end
   }


end

function ui.createIcon(params) 
    params = params or {}

    return{
       --Variables / Attributes
        x = params.x + params.padding_left, 
        y = params.y + params.padding_top,
        width = params.width - params.padding_right,
        height = params.height - params.padding_bottom, 
        name = params.name or "undefined",
        image_off = params.image_off,
        image_onn = params.image_onn,
        isActive = params.isActive,
        rotationAngle = params.rotationAngle or 0,
       --- Function 
        draw = function(self)
            --love.graphics.setScissor(self.x,self.y,self.width,self.height)
            love.graphics.setColor(1, 1, 1)
            if self.isActive then
                -- Resmi container boyutlarına ölçeklendir
                local imgWidth, imgHeight = self.image_onn:getDimensions()
                local scaleX = (self.width ) / (imgWidth + 80)
                local scaleY = (self.height) / (imgHeight + 80)
                love.graphics.draw(self.image_onn, self.x, self.y, self.rotationAngle, scaleX, scaleY)
                
            else
                -- Resmi container boyutlarına ölçeklendir
                local imgWidth, imgHeight = self.image_off:getDimensions()
                local scaleX = (self.width ) / (imgWidth + 80)
                local scaleY = (self.height) / (imgHeight + 80)
                love.graphics.draw(self.image_off, self.x, self.y, self.rotationAngle, scaleX, scaleY)
            end
           
           
           --love.graphics.setScissor()
       end
   }


end


function ui.createOption(optionCount,params) 
    params = params or {}
    local optionCount = optionCount + 1
    local option = {
       --Variables / Attributes
        x = params.x + params.padding_left, 
        y = params.y + params.padding_top,
        width = params.width - params.padding_right,
        height = params.height - params.padding_bottom, 
        icon = params.icon,
        value = params.value,
        valueFont = params.valueFont,
        optionCount = optionCount,
       --- Function 
        draw = function(self)
            love.graphics.setScissor(self.x,self.y,self.width,self.height)
            love.graphics.setColor(1, 1, 1)
            if self.icon then
                -- Resmi container boyutlarına ölçeklendir
                local imgWidth, imgHeight = self.icon.image:getDimensions()
                local scaleX = (self.icon.width ) / (imgWidth)
                local scaleY = (self.icon.height) / (imgHeight )
                love.graphics.draw(self.icon.image, self.x, self.y, 0, scaleX, scaleY)
            end 
            love.graphics.setColor(1,1,1)
            love.graphics.setFont(self.valueFont)
            love.graphics.printf(self.value,self.x+40, self.y + 2.4,self.width)
            
           
           love.graphics.setScissor()
       end
   }

   return optionCount, option


end


function ui.createMenu(params) 
    params = params or {}

    return {
        x = params.x,
        y = params.y,
        width = params.width,
        height = params.height,
        name = params.name,
        submenus = params.submenus ,
        open = params.open,
        disabled = params.disabled,
        menuFont = params.menuFont,
        submenuFont = params.submenuFont,
        hovered = params.hovered,
        draw = function(self)

            if self.disabled then
                self.height = 30
                love.graphics.setColor(0.25,0.25,0.25)
            else
                if self.hovered then 
                    love.graphics.setColor(0.4,0.4,0.4)
                else      
                    love.graphics.setColor(0.15,0.15,0.15)
                end
            end

            love.graphics.rectangle("fill",self.x,self.y,self.width,self.height)
            love.graphics.setFont(self.menuFont)
            if self.disabled then
                love.graphics.setColor(0.8,0.8,0.8)
            else
                love.graphics.setColor(1,1,1)
            end
            love.graphics.printf(self.name,self.x+8,self.y+5,self.width,"left")

            if self.submenus and self.open then
                
                love.graphics.setColor(0.3,0.3,0.3)
                love.graphics.rectangle("fill",self.x+8,self.height,230,#(self.submenus)*25)

                for i, submenu in ipairs(self.submenus) do
                    local submenuY = self.height + (i-1) * 25 
                    love.graphics.setColor(0.3,0.3,0.3)
                    love.graphics.rectangle("fill",self.x, submenuY,230,25)
                    love.graphics.setColor(1,1,1)
                    love.graphics.setFont(self.submenuFont)
                    love.graphics.printf(submenu.name,self.x+8,submenuY,230,"left")
                    if submenu.shortcut then
                        love.graphics.printf(submenu.shortcut,self.x+8,submenuY,230,"right")
                    end
                    


                end

            end
        
            
        end

    }
    
end

function ui.createIconBarItems(params)

    params = params or {}

    return{
        x = params.x,
        y = params.y,
        width = params.width,
        height = params.height,
        bgColor = params.bgColor,
        alpha = params.alpha,
        icon_off = params.icon_off,
        icon_onn = params.icon_onn,
        hovered = params.hovered,

        draw = function(self)
            local icon = self.icon_off
            love.graphics.setColor(self.bgColor[1],self.bgColor[2],self.bgColor[3],self.alpha)
            love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
            if self.hovered then
                icon = self.icon_onn
            end
            love.graphics.setColor(1, 1, 1, 1)
            love.graphics.draw(icon, self.x, self.y, 0, (self.width) / icon:getWidth() , (self.height) / icon:getHeight()) 
            
        end

    }
    
end

return ui 