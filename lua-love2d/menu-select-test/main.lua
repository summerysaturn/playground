_G.scale = 3

function love.load()
  resize(_G.scale)
  love.graphics.setBackgroundColor(hex2rgb("25262c"))
  love.graphics.setDefaultFilter('nearest', 'nearest')

  loadSprites()
end

function love.update(dt)

end

function love.draw()
  width = love.graphics.getWidth()
  height = love.graphics.getHeight()
  --drawSelects(width, height)
  debugStuff(width, height)

  --love.graphics.draw(_G.cubes, _G.sprites["void"], 50, 50, 0, 3)
  --love.graphics.draw(_G.cubes, _G.sprites["voidGlow"], 100, 50, 0, 3)

  drawSprites(width, height)
end


-- Graphics Functions

function loadSprites ()
  _G.sprites = {}
  _G.glyphQuads = {}

  _G.cubes = love.graphics.newImage("img/Sprite-Preview-Sheet-001.png")
  _G.glyphs = love.graphics.newImage("img/Sprite-Preview-Sheet-002.png")
  _G.testsheet = love.graphics.newImage("img/testsheet.png")

  _G.names = {"grass", "grassGlow", "desert", "desertGlow", "mushroom", "mushroomGlow", "lava", "lavaGlow", "void", "voidGlow"}

  for i=0,9 do
    _G.sprites[_G.names[i+1]] = love.graphics.newQuad(
      63*i,
      0,
      63,
      63,
      630,
      63
    )
  end

  _G.glyphNames = {"top", "bottom"}

  for i=0,1 do
    _G.glyphQuads[_G.glyphNames[i+1]] = love.graphics.newQuad(
      63*i,
      0,
      63,
      63,
      63*2,
      63
    )
  end

  return sprites
end

function drawSelects(width, height)
  width = love.graphics.getWidth()
  height = love.graphics.getHeight()

  for i=0,4 do
    love.graphics.setColor(0, 0, 0, 0)
    if love.mouse.getX() > width/5*i and love.mouse.getX() <= width/5*(i+1) then
      love.graphics.setColor(hex2rgb("646493"))
    end
    love.graphics.rectangle("fill", width/5* i, 0, width/5, height)
  end
end

function drawSprites(width, height)
  local spriteSize = 63*_G.scale

  for i=0,4 do
    left = width / 5 * i
    right = width / 5 * (i + 1)
    posx = left + (right-left)/2 - spriteSize/2

    posy = height/2 - spriteSize/2

    if love.mouse.getX() > width/5*i and love.mouse.getX() <= width/5*(i+1) then
      love.graphics.draw(_G.cubes, _G.sprites[_G.names[i*2 + 2]], posx, posy, 0, _G.scale)


      love.graphics.draw(_G.glyphs, _G.glyphQuads[_G.glyphNames[1]], posx, posy - 80 * _G.scale, 0, _G.scale)

      love.graphics.draw(_G.glyphs, _G.glyphQuads[_G.glyphNames[2]], posx, posy + 80 * _G.scale, 0, _G.scale)
    else
      love.graphics.draw(_G.cubes, _G.sprites[_G.names[i*2 + 1]], posx, posy, 0, _G.scale)
    end




  end
end

function debugStuff(width, height)
  -- debug text
  love.graphics.setColor(1,1,1)
  love.graphics.print(love.mouse.getX(),10,10)
  love.graphics.print(love.graphics.getWidth(),10,20)
  for i=0,4 do
    if love.mouse.getX() > width/5*i and love.mouse.getX() <= width/5*(i+1) then
      love.graphics.print("!",50,30+10*i)
    end
    love.graphics.print(width/5 * i,10,30+10*i)
  end
end

-- Pure Fuctions

function resize(i)
  windowSizeX = 384
  windowSizeY = 216

  love.window.setMode(windowSizeX * i, windowSizeY * i, {resizable=true})
end

function hex2rgb(hex)
    return tonumber("0x"..hex:sub(1,2))/255, tonumber("0x"..hex:sub(3,4))/255, tonumber("0x"..hex:sub(5,6))/255
end
