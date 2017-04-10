--  Configurações e carregamentos iniciais

function love.load()
    
    love.graphics.setNewFont(24) -- Tamanho da fonte
    
    love.graphics.setColor(58,58,60) -- Cor da fonte
    
    love.graphics.setColor(255,255,255,255) -- Cor do fundo
    
    botaovermelho = love.graphics.newImage("botaovermelho.png")
    
    botaoazul = love.graphics.newImage("botaoazul.png")
    
    botaoverde = love.graphics.newImage("botaoverde.png")
    
    botaoamarelo = love.graphics.newImage("botaoamarelo.png")
    
    somclique = love.audio.newSource("somclique.wav", "static")
    
end

-- Elementos exibidos

function love.draw()
    
    love.graphics.draw(botaoazul, 20, 20, 0, 0.8, 0.8, -159.8, -20)
    
    love.graphics.draw(botaoverde, 20, 274, 0, 0.8, 0.8, -159.8, -20)
    
    love.graphics.draw(botaovermelho, 274, 20, 0, 0.8, 0.8, -159.8, -20)
    
    love.graphics.draw(botaoamarelo, 274, 274, 0, 0.8, 0.8, -159.8, -20)
    
end

-- Seleção dos quadrados:
--  1 -> Azul
--  2 -> Vermelho
--  3 -> Verde
--  4 -> Amarelo

function love.keypressed(key)
    
    if key == "1" then
        
        love.event.quit()
        
    end
    
    if key == "2" then
        
        love.event.quit()
        
    end
    
    if key == "3" then
        
        love.event.quit()
        
    end 
    
    if key == "4" then
        
        love.event.quit()
        
    end
    
end