--------------------IMPORT--------------------

--classes
require 'CONSTANTS'
require 'Settings'
require 'Game'
require 'Object'
require 'Graphics'
require 'InputHandler'

--------------------START--------------------

function love.load()

  --load settings
  settings = Settings:new()

  --start game
  game = Game:new()

  --world init
  love.physics.setMeter(meterPX)
  world = love.physics.newWorld(0, meterPX*g, true)

  --object init
  Object('static', 'ground', 0, 600, {0, 0, 650,0, 650,50, 0,50}, {color={0.28, 0.63, 0.05}})
  Object('dynamic', 'triangle', 325, 325, {20,0, 40,40, 0,40}, {density=1, color={0.76, 0.18, 0.05}})
  Object('dynamic', 'block1', 175, 550, {0,0, 50,0, 50,100, 0,100}, {density=5})
  Object('dynamic', 'block2', 200, 400, {0,0, 100,0, 100,50, 0,50}, {density=2})

  --graphics init
  love.graphics.setBackgroundColor(0.41, 0.53, 0.97)

  --input init
  input = InputHandler:new()
end

--------------------UPDATE--------------------

function love.update(dt)
  input:update(dt)
  world:update(dt)
end

--------------------DRAW--------------------
function love.draw()
  for i, object in pairs(game.objects) do
    Graphics.draw(object)
  end
end

--------------------END--------------------

function love.quit()

end
