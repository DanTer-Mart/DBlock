-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local x = display.contentCenterX
local y = display.contentCenterY

local value = "yes"

display.setDefault( "fillColor", 0, 0.5, 0.75 )

local block1 = display.newRoundedRect(x,y,475,320,20)
block1.strokeWidth = 7.5
block1:setFillColor( 0, 0.5, 0.75 )
block1:setStrokeColor( 0, 0.3, 0.5 )

local block1n = display.newRoundedRect(x - 55,y - 75,130,40,10)
block1n:setFillColor( 0, 0.43, 0.68 )

local block1x = display.newRoundedRect(x - 55,y - 25,130,40,10)
block1x:setFillColor( 0, 0.43, 0.68 )

local block1y = display.newRoundedRect(x - 55,y + 25,130,40,10)
block1y:setFillColor( 0, 0.43, 0.68 )

local block1h = display.newRoundedRect(x - 55,y + 75,130,40,10)
block1h:setFillColor( 0, 0.43, 0.68 )

local block1w = display.newRoundedRect(x - 55,y + 125,130,40,10)
block1w:setFillColor( 0, 0.43, 0.68 )

display.setDefault( "fillColor", 1, 1, 1 )


textb1x = display.newText( "X:", x - 140, y - 25, native.systemFont, 30)
textb1n = display.newText( "Имя:", x - 160, y - 75, native.systemFont, 30)
blockt1x = display.newText( "", x - 70, y - 25, native.systemFont, 30)
blockt1n = display.newText( "", x - 70, y - 75, native.systemFont, 30)
textb1y = display.newText( "Y:", x - 140, y + 25, native.systemFont, 30)
textb1h = display.newText( "Выс:", x - 160, y + 75, native.systemFont, 30)
blockt1y = display.newText( "", x - 70, y + 25, native.systemFont, 30)
blockt1w = display.newText( "Шир:", x - 160, y + 125, native.systemFont, 30)
blockt1w = display.newText( "", x - 70, y + 125, native.systemFont, 30)


name1 = display.newText( "Создать фигуру", x - 70, y - 120, native.systemFont, 40)

application = display.newText( "DBlock Build: 3", x, 30, native.systemFont, 40)

local bg = display.newRect(x,y,2000,4000)
bg:setFillColor( 0, 0, 0 )

plus = display.newText( "", x, y - 175, native.systemFont, 35)

local data = native.newTextField( x, y - 50, 400, 60 )
data.isEditable = true
data.size = 35

local done = display.newRoundedRect(x,y + 250,200,75,20)
done:setFillColor( 0.2, 0.2, 0.2 )
donet = display.newText( "Готово", x, y + 250, native.systemFont, 40)
local function deactiveDone()
bg.alpha = 0
data.isVisible = false
           done.isVisible = false
           donet.isVisible = false
           plus.isVisible = false
end
local function activeDone()
bg.alpha = 1
data.text = ""
data.isVisible = true
done.isVisible = true
donet.isVisible = true
plus.isVisible = true
end
local function n1()
value = "n1"
plus.text = "Введи имя фигуры"
activeDone()
    end
    local function h1()
        value = "h1"
       plus.text = "Введи высоту"
       activeDone()
       end
       local function w1()
           value = "w1"
          plus.text = "Введи ширину"
          activeDone()
          end
    local function x1()
     value = "x1"
    plus.text = "Введи позицию Х"
    activeDone()
    end
    local function y1()
        value = "y1"
       plus.text = "Введи позицию Y"
       activeDone()
       end
         local function doneText()
            if(value == "n1") then
                blockt1n.text = dataD
               end
               if(value == "y1") then
                blockt1y.text = dataD
               end
               if(value == "x1") then
                blockt1x.text = dataD
               end
               if(value == "h1") then
                blockt1h.text = dataD
               end
               if(value == "w1") then
                blockt1w.text = dataD
               end
               value = "yes"
deactiveDone()
                end
                local function value( event ) 
                    if( event.phase == "editing") then
                        dataD = event.text
                end
            end
            block1w:addEventListener( "tap", w1)
    block1h:addEventListener( "tap", h1 )
    block1n:addEventListener( "tap", n1)
    block1x:addEventListener( "tap", x1 )
    block1y:addEventListener( "tap", y1 )
    done:addEventListener( "tap", doneText)
    data:addEventListener( "userInput", value )
    deactiveDone()