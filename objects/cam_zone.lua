local CamZone = Object:extend()

function CamZone:new(data)
    self.x = data.x
    self.y = data.y
    self.w = data.w or TILE_SIZE
    self.h = data.h or TILE_SIZE
end

function CamZone:draw()
    if CONSOLE then
        love.graphics.setColor(0, 1, 1, 0.1)
        love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
        Color.reset()
        love.graphics.setFont(Font)
        love.graphics.print(self.value, self.x, self.y)
    end
end

return CamZone