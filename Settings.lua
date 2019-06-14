--------------------IMPORT--------------------

require 'Class'
local json = require 'json'

--------------------OBJECT--------------------

Settings = Class:new()

--------------------VARIABLES--------------------

Settings.m = {}

--------------------CONSTRUCTOR--------------------

function Settings:new()
  --set default settings if file doesn't exist
--if love.filesystem.exists(settingsFile) then
  --local file = love.filesystem.read(settingsFile)
  --self.m = json.parse(file)
--else
  self.m = defaultSettings
  self:save()
--end

  return self
end

--------------------FUNCTIONS--------------------

function Settings:save()
  love.filesystem.write(settingsFile, json.stringify(self.m))
end
