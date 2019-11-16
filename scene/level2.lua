local composer = require("composer") 	 	--Importa o Composer
local physics = require("physics") 		 	--Importa a Fisica

local sounds = require( "soundsfile" )	 	--Importa o Som

local level = require("game2")		--Importa o aqruivo leveltemplate.lua
local scene = composer.newScene()			-- Cria uma nova cena pelo Composer

composer.recycleOnSceneChange = true		-- Não sei o que faz


local backGroup = display.newGroup()		-- bg1 Cria um grupo para o Background
local mainGroup = display.newGroup()		-- Cria um grupo para o .....
local uiGroup = display.newGroup()			-- Cria um grupo para o .....

local jumpLimit = 0							-- Variável para Limite de pulo

local finalScore



function scene:create( event )	
	
	--## Seta o nível atual ## --
	local sceneGroup = self.view
	level:setCurrentLevel(1)	
	
	musicTrack = audio.loadStream( "sound/Surfista.mp3" )


	background = level:createBackground(level:getCurrentLevel()) --(OK) Adc o background relativo ao level
	backGroup:insert(background) -- OK

	player = level:createPlayer("ui/sprite/Mergulhador.png", "running")
	mainGroup:insert(player) -- OK

	level:setValues(1,100,0)	
		
	physics.start()	
	----------------------------
	if event.phase == "began" then
		gotoNextPhase()
	end
	 --## Finish!

    -- Finish the game by hiding the controls and displaying the play again button.
    function finish()
        controls:hide()
        
        gotoNextPhase()
    end

	local floor = level:createFloor("ui/background/ground1.png")
	mainGroup:insert(floor)
	floor.alpha = -0.13

	local floor2 = level:createFloor("ui/background/ground1.png")
	mainGroup:insert(floor2)
	floor2.alpha = -0.13
	
		
	physics.addBody(player, "dynamic", { density = 0, friction = 0, bounce = 0})
	player.isFixedRotation=true	
	player.gravityScale = 0.8
	

	local function creationLoop(event)
		local aux = math.random(0, 12)

		if aux <= 6 then
			invoices = level:createInvoices(level:getCurrentLevel())
			mainGroup:insert(invoices)
		else
			incomes = level:createIncomes(level:getCurrentLevel())
			mainGroup:insert(incomes)
		end
	end

	local function update( event )
		level:moveIncomes()
		level:moveInvoices()
		level:moveFloor(floor)
		
		back = level:updateBackground(level:getCurrentLevel())
		backGroup:insert(back)
	end
	
	movementLoop = timer.performWithDelay(10, update, -1)
	emergeLoop = timer.performWithDelay(1700, creationLoop, -1 )
	

	local function playerCollision( self, event )
		
		if(event.other.name == "CHAO") then	
			jumpLimit = 0
		end

		-- -- ### Ganhando Pontos ##--
		if( event.other.type == "money") then
			playSFX(trashEffect)
			
			if event.other.name == "garrafa" then
				level:addCredit(event.other.value)
			end	

			if event.other.name == "lxo4" then
				level:addCredit(event.other.value)
			end	

			if event.other.name == "LataDeOleo2" then
				level:addCredit(event.other.value)
			end

			if event.other.name == "manchaOleo" then
				level:addCredit(event.other.value)
			end	

			if event.other.name == "LatasDeOleo4" then
				level:addLife(event.other.value)
			end
		
			if event.other.name == "pneu" then
				level:addCredit(event.other.value)
			end			

			if event.other.name == "LataDeOleo3" then
				level:addCredit(event.other.value)
			end	
			
			if event.other.name == "sacola" then
				level:addCredit(event.other.value)
			end		
		
			if event.other.name == "petroleo" then
				level:addCredit(event.other.value)
			end			

			level:collideIncomes()
			timer.performWithDelay(1, function()
				event.other.alpha = 0
		        event.other = nil
		    end, 1)
			event.other:removeSelf();
		end

		-- ### Perdendo Pontos ##--
		if( event.other.type == "bill") then
			playSFX(trashEffect2)			
		
			if ( event.other.name == "barcoPirata") then
				level:reduceCredit(event.other.value)
				level:reducelife(event.other.value)
			end

			if ( event.other.name == "barco1") then
				level:reducelife(event.other.value)				
			end		
			if ( event.other.name == "barco2") then
				level:reduceCredit(event.other.value)

			end	
			
			if ( event.other.name == "ancora") then
				level:reduceCredit(event.other.value)

			end	
	
			level:collideInvoices()
			if level:isAlive() then
				timer.performWithDelay(1, function()
					event.other.alpha = 1
					event.other = nil
				end, 1)
				event.other:removeSelf();
			else
				timer.performWithDelay( 1, endGame )
				
			end				    	
		end
	end
	player.collision = playerCollision
	player:addEventListener("collision")


	jumpbtn = display.newImageRect("ui/button/jump.png", 50, 50)
	jumpbtn.x = 32
	jumpbtn.y = display.contentHeight - 35

--##Jump Function ###--
	function jumpbtn:touch(event)
		playSFX(jumpBtnAud)
		if(event.phase == "began") then
			jumpLimit = jumpLimit + 1
			if jumpLimit < 2 then
				physics.setGravity( 0, 10 ) 
				local vx, vy = player:getLinearVelocity()
        		player:setLinearVelocity( vx, 0 )
				physics.addBody(player, "dynamic", { density = 0,radius = 0.01, friction = 0, bounce = 0, gravity = 0 })
				player:applyLinearImpulse(nil, -0.45, player.x, player.y)
			  			 
			end
		jumpLimit = 0
		end		
	end

	jumpbtn:addEventListener("touch", jumpbtn)	
	uiGroup:insert(jumpbtn)
		
	local header = level:buildHeader(true, true, true)
	uiGroup:insert(header)
	

	level:buildPause(player)

end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is still off screen (but is about to come on screen)

	elseif ( phase == "did" ) then
		-- Code here runs when the scene is entirely on screen
		audio.play( musicTrack, { channel=1, loops=-1 } )		

	end
end

function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		timer.cancel(movementLoop)
		timer.cancel(emergeLoop)
		if(toLeft ~= nil) then
			timer.cancel(toLeft)			
		end
		level:destroy()		
		display.remove(mainGroup)
		display.remove(uiGroup)
		display.remove(backGroup)		
	elseif ( phase == "did" ) then
		physics.pause()
		audio.stop( 1 )
		composer.removeScene("level2")
		composer.hideOverlay()
		Runtime:removeEventListener( "collision", onLocalCollision)
		Runtime:removeEventListener("touch", onTouch)
		
	end
end

-- destroy()
function scene:destroy( event )

	local sceneGroup = self.view
	-- Code here runs prior to the removal of scene's view
	audio.dispose( musicTrack )
end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )


return scene