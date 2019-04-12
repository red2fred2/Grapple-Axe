--------------------IMPORT--------------------

require 'Class'

--------------------OBJECT--------------------

Game = Class:new()

--------------------VARIABLES--------------------

Game.state = nil
Game.objects = {}

--------------------CONSTRUCTOR--------------------

function Game:new()
  return self
end
--------------------FUNCTIONS--------------------

function Game:quit()
  love.event.quit()
end
