-- Incluir módulos / bibliotecas
local composer = require( "composer")
local widget = require( "widget" )
local sounds = require( "soundsfile" )

local level = require("game1")

-- Criando uma nova cena do compositor
local scene = composer.newScene()

local background

local function gotoMenu()
	composer.gotoScene( "scene.menu" )
end

function scene:create( event )
	

	local sceneGroup = self.view
	level:setValues(100,100,3)

	-- O código aqui é executado quando a 
	-- cena é criada pela primeira vez, 
	-- mas ainda não apareceu na tela

	background = display.newImageRect( sceneGroup, "ui/background/gameover.png", 600, 400 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local backButton = display.newImageRect( sceneGroup, "ui/background/backBtn.png", 100, 50 )
	backButton.x = display.contentCenterX + 200
	backButton.y = display.contentCenterY + 120

	local backButton = display.newImageRect( sceneGroup, "ui/background/menu.png", 200, 100 )
	backButton.x = display.contentCenterX + 198
	backButton.y = display.contentCenterY + 70

	backButton:addEventListener( "tap", gotoMenu )

	musicTrack = audio.loadStream( "sound/Surfista.mp3" )
end

-- show()
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- O código aqui é executado quando a cena ainda está fora da tela (mas está prestes a aparecer na tela)

	elseif ( phase == "did" ) then
		-- O código aqui é executado quando a cena está totalmente na tela
		audio.play( musicTrack, { channel=1, loops=-1 } )

	end
end


-- hide()
function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		
	--O código aqui é executado quando a cena está na tela (mas está prestes a sair da tela)

	elseif ( phase == "did" ) then
		
		-- O código aqui é executado quando a cena está na tela (mas está prestes a sair da tela)
		audio.stop( 1 )

	end
end


-- destroy()
function scene:destroy( event )

	local sceneGroup = self.view	
	-- O código aqui é executado antes da remoção da visualização da cena
	audio.dispose( musicTrack )

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------



return scene