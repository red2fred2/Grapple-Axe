--------------------IMPORT--------------------

require 'Class'

local inspect = require('inspect')

--------------------OBJECT--------------------

InputHandler = Class:new()

--------------------VARIABLES--------------------

InputHandler.inputMode = 'keyboard'
InputHandler.keysHeld = {}
InputHandler.gamepads = nil
InputHandler.gamepadsHeld = {}

--------------------CONSTRUCTOR--------------------

function InputHandler:new()
  InputHandler:mappingStartup()
  return self
end

--------------------FUNCTIONS--------------------

function InputHandler:mappingStartup()
  if not love.joystick.loadGamepadMappings(gamepadMapFile) then
    love.joystick.saveGamepadMappings('gamepad-mappings')
  end
end

function InputHandler:update(dt)
  for i, table in pairs(settings.m.controls) do
    if keyCheck(table.triggers.keyboard) then
      for j, event in pairs(table.effects) do
        load(event)() --REMOVE THIS NONSENSE IF I ADD ONLINE!
      end
    end
  end
end

function love.gamepadpressed(joystick, button)

end

function love.gamepadreleased(joystick, button)

end

function love.keypressed(key, scancode, isrepeat)

end

function love.keyreleased(key)

end

function love.joystickadded(joystick)
  input:gamepadChange()
end

function love.joystickremoved(joystick)
  input:gamepadChange()
end
