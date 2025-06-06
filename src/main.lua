-- Main entry for Dungeon Destruction Runner
-- Basic setup using Love2D

local player = { x = 100, y = 100, speed = 200 }

function love.load()
    love.graphics.setBackgroundColor(0.1, 0.1, 0.1)
end

function love.update(dt)
    if love.keyboard.isDown('left') then
        player.x = player.x - player.speed * dt
    elseif love.keyboard.isDown('right') then
        player.x = player.x + player.speed * dt
    end

    if love.keyboard.isDown('up') then
        player.y = player.y - player.speed * dt
    elseif love.keyboard.isDown('down') then
        player.y = player.y + player.speed * dt
    end
end

function love.draw()
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle('fill', player.x, player.y, 32, 32)

    love.graphics.print('Use arrow keys to move the player.', 10, 10)
end
