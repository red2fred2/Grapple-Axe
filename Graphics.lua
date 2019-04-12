Graphics = {}

function Graphics.draw(object)
  love.graphics.setColor(object.color)
  love.graphics.polygon("fill", object.body:getWorldPoints(object.shape:getPoints()))
end
