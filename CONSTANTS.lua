DEBUG = true
meterPX = 64
g = 9.81
gamepadMapFile = 'gamepad-mappings'
settingsFile = 'settings.json'

defaultSettings = {

  controls = {
    --[[
    control layout:

    functionName = {
      Keyboard = {
        input,
        input,
        input
      },
      UUID = {
        input,
        input
      },
      UUID = {
        input
      }
    }

    ]]--
    exit = {
       effects = {"love.event.quit('User pressed exit button')"},
       triggers = {
         keyboard = {
           'escape'
         }
       }
    }

  }

}
