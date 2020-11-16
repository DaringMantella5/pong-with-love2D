Ball = Entity:extend()

local radius = 5
local speed = 4
local xspeed = 4

function Ball:new(x,y)
	Ball.super.new(self,x,y)
	self.width = radius
	self.height = radius
end

function Ball:update(dt)
	local window_height = love.graphics.getHeight()
	self.x = self.x + xspeed
	self.y = self.y + speed

	if self.y < 0 then
		speed = -speed
	elseif self.y + radius > window_height then
--		self.y = -self.y
		speed = -speed
	end 
end

function Ball:draw()
	love.graphics.circle("fill",self.x,self.y,radius)
	
end

function Ball:checkCollision(e)
	return self.x + self.width > e.x
	and self.x < e.x + e.width
	and self.y + self.height > e.y
	and self.y < e.y + e.height
end

function Ball:smack()
	if ball:checkCollision(paddle1) then
		xspeed = -xspeed
		self.y = self.y + math.random(-5,5)
	end
	if ball:checkCollision(paddle2) then
		xspeed = -xspeed
		self.y = self.y + math.random(-10,5)
	end
end

function Ball:score()
	if self.x < 50 then
		score2 = score2 + 1
		love.load()
	elseif self.x > 750 then
		score1 = score1 + 1
		love.load()
	end
end