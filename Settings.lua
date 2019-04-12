--------------------IMPORT--------------------

require 'Class'
json = require 'json'

--------------------OBJECT--------------------

Settings = Class:new()

--------------------VARIABLES--------------------

Settings.m = {}

--------------------CONSTRUCTOR--------------------

function Settings:new()
  --load settings
  local file = love.filesystem.read(settingsFile)
  self.m = json.parse(file)

  return self
end

--------------------FUNCTIONS--------------------

function Settings:save()
  love.filesystem.write(settingsFile, json.stringify(self.m))
end
