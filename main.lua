game = {
    width = 900,
    height = 650
}
platform = {
    width = 150,
    height = 30,
    x = game.width/2 - 75,
    y = game.height - 30
}

ball =  {
    x = game.width/2 - 20,
    y = 50,
    radius = 20,
    gravity = 0,
}
function love.load()
    -- Window game
    love.window.setMode(game.width, game.height) -- Create the window

end

function love.update(dt)
    -- move platform
    if love.keyboard.isDown("right") then
        platform.x = platform.x + 5
    end

    if love.keyboard.isDown("left") then
        platform.x = platform.x - 5
    end

    -- Colision with wall
    if platform.x < 0 then
        platform.x = 0
    end

    if platform.x > game.width - platform.width then
        platform.x = game.width - platform.width
    end
end

function love.draw()
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle('fill', platform.x, platform.y, platform.width, platform.height)
    love.graphics.circle('fill', ball.x, ball.y, ball.radius)
end