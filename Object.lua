--------------------IMPORT--------------------

require 'Class'
require 'utility'

--------------------OBJECT--------------------

Object = Class:new()

--------------------VARIABLES--------------------

--defaults
Object.densityDefault = 1
Object.springDefault = 0.3
Object.colorDefault = {.2, .2, .2}

--------------------CONSTRUCTOR--------------------

function Object:new(type, name, x, y, vertices, options)

  --handle static vs dynamic object creation
  if type == 'static' then
    Object:newStatic(name, x, y, vertices, options)
  elseif type == 'dynamic' then
    Object:newDynamic(name, x, y, vertices, options)
  end

  if options then
    game.objects[name].color = default(options.color, Object.colorDefault)
  end
end

function Object:newStatic(name, x, y, vertices, options)
  local transVerts = translateVertices(x, y, vertices)

  game.objects[name] = {}
  game.objects[name].body = love.physics.newBody(world, x/2, y/2)
  game.objects[name].shape = love.physics.newPolygonShape(transVerts)
  game.objects[name].fixture = love.physics.newFixture(game.objects[name].body, game.objects[name].shape)

  return self
end

function Object:newDynamic(name, x, y, vertices, options)
  --deal with options
  local density = default(options.density, Object.densityDefault)
  local spring = default(options.spring, Object.springDefault)

  local transVerts = translateVertices(x, y, vertices)

  game.objects[name] = {}
  game.objects[name].body = love.physics.newBody(world, x/2, y/2, 'dynamic')
  game.objects[name].shape = love.physics.newPolygonShape(transVerts)
  game.objects[name].fixture = love.physics.newFixture(game.objects[name].body, game.objects[name].shape, density)
  game.objects[name].fixture:setRestitution(spring)

  return self
end
