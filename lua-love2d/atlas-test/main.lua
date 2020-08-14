atlas = require 'atlas'

local atlasQuads
local atlasSheet
local atlasNames = {"f_1", "f_2", "f_3", "f_4", "f_5", "f_6", "f_7", "f_8"}

function love.load()
  atlasQuads = atlas.load("atlas")
  atlasSheet = love.graphics.newImage("img/atlas.png")
end

function love.draw()
  love.graphics.draw(atlasSheet, 0, 0)
  for i,v in ipairs(atlasNames) do
    love.graphics.draw(atlasSheet, atlasQuads[v],
                       (i-1) * 72, 144)
  end
end
