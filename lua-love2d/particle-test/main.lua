-- Early precursor to a particle/entity system using love2d

function love.load()
  local img = love.graphics.newImage('particle.png')

  p = love.graphics.newParticleSystem(img, 200)
  p:setEmitterLifetime(-1)
  p:setParticleLifetime(10, 10)
  p:setEmissionRate(10)
  p:setLinearAcceleration(0,100,0,100)
end


function love.draw()
  love.graphics.draw(p, love.graphics.getWidth()*0.5, love.graphics.getHeight()*0.5)
end

function love.update(dt)
  p:update(dt)
end
