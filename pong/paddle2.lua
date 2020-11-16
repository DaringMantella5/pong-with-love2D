Paddle2 = Entity:extend()

local width = 10
local height = 50
local speed = 25

function Paddle2:new(x,y)
	Paddle.super.new(self,x,y)
	self.width = width
	self.height = height
end

function Paddle2:update()
	if love.keyboard.isDown("kp4") then
		speed = 10
	else
		speed = 25
	end

	if love.keyboard.isDown("kp8") then
		self.y = self.y - speed
	elseif love.keyboard.isDown("kp5") then
		self.y = self.y + speed
	end

	local window_height = love.graphics.getHeight()

	if self.y < 0 then
		self.y = 0
	elseif self.y + self.height > window_height then
		self.y = window_height - self.height
	end
end

function Paddle2:draw()
	love.graphics.rectangle("fill",self.x,self.y,width,height)
end