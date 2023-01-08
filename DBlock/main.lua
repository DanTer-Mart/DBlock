local x = display.contentCenterX
local y = display.contentCenterY

local value = "yes"
local sim = 0

local g1 = display.newGroup()
local g2 = display.newGroup()
local check = display.newGroup()
local logic = {}
g2.isVisible = false
check.isVisible = false
display.setDefault( "fillColor", 0, 0.5, 0.75 )

local block1 = display.newRoundedRect(x,y,475,320,20)
block1.strokeWidth = 7.5
block1:setFillColor( 0, 0.5, 0.75 )
block1:setStrokeColor( 0, 0.3, 0.5 )
g1:insert( block1 )

local block1n = display.newRoundedRect(x - 55,y - 75,130,40,10)
block1n:setFillColor( 0, 0.43, 0.68 )
g1:insert( block1n )

local block1x = display.newRoundedRect(x - 55,y - 25,130,40,10)
block1x:setFillColor( 0, 0.43, 0.68 )
g1:insert( block1x )

local block1y = display.newRoundedRect(x - 55,y + 25,130,40,10)
block1y:setFillColor( 0, 0.43, 0.68 )
g1:insert( block1y )

local block1h = display.newRoundedRect(x - 55,y + 75,130,40,10)
block1h:setFillColor( 0, 0.43, 0.68 )
g1:insert( block1h )

local block1w = display.newRoundedRect(x - 55,y + 125,130,40,10)
block1w:setFillColor( 0, 0.43, 0.68 )
g1:insert( block1w )

local start = display.newRoundedRect(x,y + y - 100 ,x,75,10)
start:setFillColor( 0.3, 0.3, 0.3 )

display.setDefault( "fillColor", 1, 1, 1 )


textb1x = display.newText( "X:", x - 140, y - 25, native.systemFont, 30)
textb1n = display.newText( "Имя:", x - 160, y - 75, native.systemFont, 30)
blockt1x = display.newText( "", x - 70, y - 25, native.systemFont, 30)
blockt1n = display.newText( "", x - 70, y - 75, native.systemFont, 30)
textb1y = display.newText( "Y:", x - 140, y + 25, native.systemFont, 30)
textb1h = display.newText( "Выс:", x - 160, y + 75, native.systemFont, 30)
blockt1h = display.newText( "", x - 70, y + 75, native.systemFont, 30)
blockt1y = display.newText( "", x - 70, y + 25, native.systemFont, 30)
blockt1w1 = display.newText( "Шир:", x - 160, y + 125, native.systemFont, 30)
blockt1w = display.newText( "", x - 70, y + 125, native.systemFont, 30)
start1 = display.newText( "Запустить", x, y + y - 100, native.systemFontBold, 30)

g1:insert( textb1x )
g1:insert( textb1n )
g1:insert( textb1y )
g1:insert( textb1h )
g1:insert( blockt1x )
g1:insert( blockt1y )
g1:insert( blockt1w1 )
g1:insert( blockt1w )
g1:insert( blockt1n )
g1:insert( blockt1h )

name1 = display.newText( "Создать фигуру", x - 70, y - 120, native.systemFontBold, 40)
g1:insert( name1 )

application = display.newText( "DBlock Build: 4 \n by DanTer", x, 40, native.systemFontBold, 40)
g1:insert( application )

plus = display.newText( "", x, y - 175, native.systemFont, 35)
check:insert(plus)

local data = native.newTextField( x, y - 50, 400, 60 )
data.isEditable = true
data.size = 35

local done = display.newRoundedRect(x,y + 250,200,75,20)
done:setFillColor( 0.2, 0.2, 0.2 )
check:insert(done)
donet = display.newText( "Готово", x, y + 250, native.systemFont, 40)
check:insert(donet)

local function deactiveDone()
    g1.isVisible = true
   check.isVisible = false
   data.isVisible = false
   start.isVisible = true
   start1.isVisible = true
end
local function activeDone()
    g1.isVisible = false
   data.text = ""
   check.isVisible = true
   data.isVisible = true
   start.isVisible = false
   start1.isVisible = false
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
      logic["n1"] = tostring(dataD)
   end
   if(value == "y1") then
      blockt1y.text = dataD
      logic["y1"] = tonumber(dataD)
   end
   if(value == "x1") then
      blockt1x.text = dataD
      logic["x1"] = tonumber(dataD)
   end
   if(value == "h1") then
      blockt1h.text = dataD
      logic["h1"] = tonumber(dataD)
   end
   if(value == "w1") then
      blockt1w.text = dataD
      logic["w1"] = tonumber(dataD)
   end
value = "yes"
deactiveDone()
end
local function value( event ) 
   if( event.phase == "editing") then
      dataD = event.text
   end
end
local function run()
   if sim == 0 then
      g1.isVisible = false
      g2.isVisible = true
      start1.text = "Выйти"
      name = logic["n1"]
      if logic["x1"] ~= nil or logic["y1"] ~= nil or logic["w1"] ~= nil or logic["h1"] ~= nil then
         local name = display.newRect( logic["x1"], logic["y1"], logic["w1"], logic["h1"] )
         g2:insert( name )
      end
      sim = 1
   elseif sim == 1 then
      g1.isVisible = true
      g2.isVisible = false
      start1.text = "Запустить"
      sim = 0
   end
end
block1w:addEventListener( "tap", w1)
    block1h:addEventListener( "tap", h1 )
    block1n:addEventListener( "tap", n1)
    block1x:addEventListener( "tap", x1 )
    block1y:addEventListener( "tap", y1 )
    done:addEventListener( "tap", doneText)
    start:addEventListener( "tap", run )
    data:addEventListener( "userInput", value )
deactiveDone()