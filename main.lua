--------------------IMPORT--------------------

--classes
require 'Game'
require 'Object'
require 'Graphics'
require 'InputHandler'

--------------------CONSTANTS--------------------

DEBUG = true
meterPX = 64
g = 9.81

--------------------START--------------------

function love.load()
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

--------------------CALLBACK FUNCTIONS--------------------

function love.gamepadpressed(joystick, button)
  input:startGamepad(joystick, button)
end

function love.gamepadreleased(joystick, button)
  input:endGamepad(joystick, button)
end

function love.keypressed(key, scancode, isrepeat)
  input:startKeyboard(key, isrepeat)

  --if key == 'escape' then
  --  love.event.quit('Player Exited')
  --end
  --if key == 'left' then
--    game.objects.triangle.body:applyForce(-400, 0)
--  end
--  if key == 'right' then
  --  game.objects.triangle.body:applyForce(400, 0)
  --end


end

function love.keyreleased(key)
  input:endKeyboard(key)
end

function love.joystickadded(joystick)
  input:addGamepad(joystick)
end

function love.joystickremoved(joystick)
  input:removeGamepad(joystick)
end
