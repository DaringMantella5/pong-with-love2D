Entity = Object:extend()

function Entity:new(x,y,speed,width,height)
	self.x = x
	self.y = y
	self.speed = speed
	self.width = width
	self.height = height
end

function Entity:update(dt)
	
end

function Entity:draw()
	
end

function Entity:checkCollision(e)
	return self.x + self.width > e.x
	and self.x < e.x + e.width
	and self.y + self.height > e.y
	and self.y < e.y + e.height
end