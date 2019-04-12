--------------------IMPORT--------------------

require 'Class'

--------------------OBJECT--------------------

InputHandler = Class:new()

--------------------VARIABLES--------------------

InputHandler.inputMode = 'keyboard'
InputHandler.keysHeld = {}
InputHandler.gamepads = nil

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

end

function InputHandler:startKeyboard(key, isrepeat)
  InputHandler.keysHeld[key] = 0
end

function InputHandler:endKeyboard(key)
  InputHandler.keysHeld[key] = nil
end

function InputHandler:startGamepad(joystick, button)
  local name = love.joystick.getName(joystick)

end

function InputHandler:endGamepad(joystick, button)
  local name = love.joystick.getName(joystick)
end

---------------------------------------------------

function InputHandler:gamepadChange()
  InputHandler.gamepads = love.joystick.getJoysticks()
end
