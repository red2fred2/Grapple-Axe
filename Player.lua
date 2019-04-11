--------------------IMPORT--------------------

require 'Class'

--------------------OBJECT--------------------

Player = Class:new()

--------------------VARIABLES--------------------

Player.x = 100
Player.y = 100

--------------------CONSTRUCTOR--------------------



--------------------FUNCTIONS--------------------

function Player:draw()
  love.graphics.rectangle('fill', self.x, self.y, 100, 100)
end
