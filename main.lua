--------------------IMPORT--------------------

--classes
require 'Player'

--------------------OBJECT--------------------

game = {}

--------------------CONSTANTS--------------------

DEBUG = true

--------------------START--------------------

function love.load()
player = Player:new()
end

--------------------UPDATE--------------------

function love.update(dt)

end

--------------------DRAW--------------------
function love.draw()
  player:draw();
end

--------------------END--------------------

function love.quit()

end

--------------------CALLBACK FUNCTIONS--------------------

function love.gamepadpressed(joystick, button)

end

function love.keypressed(key, scancode, isrepeat)
  love.event.quit('Player Exited')
end

function love.joystickadded(joystick)

end

function love.joystickremoved(joystick)

end
