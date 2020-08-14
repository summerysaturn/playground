json = require 'json'

local atlas = {}

function atlas.load(name)
  local f = love.filesystem.read("img/" .. name .. ".json")
  local quads = {}
  if f then
    local data = json.decode(f)
    print(data["meta"]["image"] .. " json found")

    for i,v in ipairs(data["frames"]) do
      -- quads[tagName] = (frame data from json)
      -- Referenced from aseprite json format. can be reconstructed manually.
      quads[data["frames"][i]["filename"]] = love.graphics.newQuad(
        data["frames"][i]["frame"]["x"], --x
        data["frames"][i]["frame"]["y"], --y
        data["frames"][i]["frame"]["w"], --width
        data["frames"][i]["frame"]["h"], --height
        data["meta"]["size"]["w"],       --sw (reference width)
        data["meta"]["size"]["h"])       --sy (reference height)
      print (data["frames"][i]["filename"] .. " loaded")
    end
  else
    print("file not opened")
  end

  return quads
end

return atlas
