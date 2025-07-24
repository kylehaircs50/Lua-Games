WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 858
VIRTUAL_HEIGHT = 525

function love.load()
    --TODO: ADD NEW FONTS SMALL AND LARGE

    player_one_score = 0
    player_two_score = 0

    love.graphics.setDefaultFilter('nearest', 'nearest')
    love.window.setMode(WINDOW_WIDTH,WINDOW_HEIGHT, {
        resizable = false,
        vsync = true;
        fullscreen = false;
    })
end 

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.draw()
    
    love.graphics.clear(45/255, 50/255, 52/255, 1)
    love.graphics.newFont('font.ttf', 20)
    love.graphics.print(tostring(player_one_score), WINDOW_WIDTH / 2 - 110, WINDOW_HEIGHT/ 3- 10)
    love.graphics.print(tostring(player_two_score), WINDOW_WIDTH / 2 + 80, WINDOW_HEIGHT/ 3- 10)
    love.graphics.rectangle('fill', 10, 10, 20, 60) -- player 1 paddle
    love.graphics.rectangle('fill', WINDOW_WIDTH - 30, WINDOW_HEIGHT - 70, 20, 60) -- player 2 paddle

    -- BALL -- 
    love.graphics.rectangle('fill', WINDOW_WIDTH / 2 + 10, WINDOW_HEIGHT / 2 + 10, 20, 20)

end

function love.update(dt)

end 