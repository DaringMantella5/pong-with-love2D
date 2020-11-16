score1 = 0
score2 = 0

function love.load() 
	Object = require "classic"
	
	require "entity"
	require "paddle"
	require "paddle2"
	require "ball"

	ball = Ball(400,300)
	paddle1 = Paddle(100,300)
	paddle2 = Paddle2(700,300)
end

function love.update(dt) 
	paddle1:update(dt)
	paddle2:update(dt)
	ball:update(dt)

	ball:smack()
	ball:score()
end

function love.draw() 
	paddle1:draw()
	paddle2:draw()
	ball:draw()
	love.graphics.print(tostring(score1),200,200,0,7) 
	love.graphics.print(tostring(score2),550,200,0,7) 
end