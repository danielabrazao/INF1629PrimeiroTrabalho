--  Configurações e carregamentos iniciais

function love.load()
    
    love.graphics.setNewFont(24) -- Tamanho da fonte
    
    love.graphics.setColor(255,255,255) -- Cor da fonte
    
    love.graphics.setColor(255,255,255) -- Cor do fundo
    
    botaovermelho = love.graphics.newImage("botaovermelho.png")
    
    botaoazul = love.graphics.newImage("botaoazul.png")
    
    botaoverde = love.graphics.newImage("botaoverde.png")
    
    botaoamarelo = love.graphics.newImage("botaoamarelo.png")
    
    somclique = love.audio.newSource("somclique.wav")
    
    -- Inicializa 2 vetores 'a' e 'b' com 5 posições cada
    
    a = {} -- Declara vetor da sequência aleatória

    math.randomseed(os.time())
    
    for i = 0, 4 do
        a[i] = math.random(1,4) -- Inicializa vetor com números pseudoaleatórios de 1 a 4
    end

    b = {} -- Declara vetor da sequência do usuário

    for i = 0, 4 do
        b[i] = 0 -- Inicializa vetor com 0's
    end
    
    j = 0 -- Inicializa contador de jogadas
    
    perdeu = 0
    
    venceu = 0
    
end -- love.load

--  Reinício do jogo

function zera()

    math.randomseed(os.time())
    
    for i = 0, 4 do
        a[i] = math.random(1,4)
    end

    for i = 0, 4 do
        b[i] = 0
    end
    
    j = 0 -- Inicializa contador de jogadas
    
    perdeu = 0
    
    venceu = 0
    
end -- zera

-- Elementos exibidos

function love.draw()
    
    if perdeu == 0 and venceu == 0 then
        
        love.graphics.print("a:", 20, 15)
        
        for i = 0, 4 do
            love.graphics.print(a[i], 20, 20+20+25*i)
        end

        love.graphics.print("b:", 60, 15)
        
        for i = 0, 4 do
            love.graphics.print(b[i], 60, 20+20+25*i)
        end

        love.graphics.draw(botaoazul, 20, 20, 0, 0.8, 0.8, -159.8, -20)

        love.graphics.draw(botaoverde, 20, 274, 0, 0.8, 0.8, -159.8, -20)

        love.graphics.draw(botaovermelho, 274, 20, 0, 0.8, 0.8, -159.8, -20)

        love.graphics.draw(botaoamarelo, 274, 274, 0, 0.8, 0.8, -159.8, -20)

        love.graphics.print("j:", 20, 180)

        love.graphics.print(j, 40, 180)
    
    elseif perdeu == 1 then
        love.graphics.print("Perdedor!", 40, 180)
        
    elseif venceu == 1 then
        love.graphics.print("Vencedor!", 40, 180)
    end
    
end -- love.draw

-- Compara b[j] com a[j]

function compara()
    if b[j] ~= a[j] then
        perdeu = 1       
    end
end -- compara

-- Elementos atualizados constantemente

function love.update(dt)
    
    -- Seleção dos quadrados:
    --  1 -> Azul
    --  2 -> Vermelho
    --  3 -> Verde
    --  4 -> Amarelo
    
    function love.keypressed(key)
            
                if j < 5 then
                    if key == "1" then

                        somclique:play()
                        b[j] = 1
                        compara()
                        j = j + 1 -- Passa para a próxima jogada

                    end

                    if key == "2" then

                        somclique:play()
                        b[j] = 2
                        compara()
                        j = j + 1 -- Passa para a próxima jogada

                    end

                    if key == "3" then

                        somclique:play()
                        b[j] = 3
                        compara()
                        j = j + 1 -- Passa para a próxima jogada

                    end 

                    if key == "4" then

                        somclique:play()
                        b[j] = 4
                        compara()
                        j = j + 1 -- Passa para a próxima jogada

                    end
                    
                end -- if j < 5
                
                if j == 5 then
                
                    venceu = 1
                
                end -- if j == 5
                
                if key == "space" then
                    
                    zera() -- Reinicia o jogo
                    
                end -- if key == "space"
            
                if key == "escape" then

                    love.event.quit() -- Sai do jogo

                end -- if key == "escape"
    
        end -- love.keypressed
    
end -- love.update