-- Main entry for Dungeon Destruction Runner
-- Basic setup using Love2D

-- Current game state: 'menu' or 'game'
local state = 'menu'

local player = { x = 100, y = 100, speed = 200 }

function love.load()
    love.graphics.setBackgroundColor(0.1, 0.1, 0.1)
end

function love.update(dt)
    if state == 'game' then
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
end

function love.draw()
    if state == 'menu' then
        love.graphics.printf('Dungeon Destruction Runner', 0, love.graphics.getHeight() / 2 - 20, love.graphics.getWidth(), 'center')
        love.graphics.printf('Press Enter to Start', 0, love.graphics.getHeight() / 2 + 10, love.graphics.getWidth(), 'center')
    elseif state == 'game' then
        love.graphics.setColor(1, 1, 1)
        love.graphics.rectangle('fill', player.x, player.y, 32, 32)

        love.graphics.print('Use arrow keys to move the player.', 10, 10)
    end
end

function love.keypressed(key)
    if state == 'menu' and key == 'return' then
        state = 'game'
        player.x, player.y = 100, 100
    elseif state == 'game' and key == 'escape' then
        state = 'menu'
    end
end
