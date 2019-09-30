--### Incluindo modulos - libraries ###--
local composer = require( "composer")

composer.recycleOnSceneChange = true

local physics = require("physics")
local widget = require( "widget" )
local sounds = require( "soundsfile" )
local base = require( "base")

--### Criando Coordenadas ###--
local cX = display.contentCenterX -- Coordenada X
local cY = display.contentCenterY -- Coordenada Y

--### Criando uma nova sena do Composer ###--
local scene = composer.newScene()

local function gotoGame()
	playSFX(losesound)
	 
	composer.gotoScene( "scene.level1" )
end

local function gotoHighscore()
	composer.gotoScene( "scene.highscore", { time=800, effect="crossFade" } )
end

local function gotoHelp()
	composer.gotoScene( "scene.help", { time=800, effect="crossFade" } )
end


--## Criando grupos ###--
local backGroup = display.newGroup()
local mainGroup = display.newGroup()

--## Criando senas ###--
function scene:create( event )
	musicTrack = audio.loadStream( "sound/play.mp3" )

local sceneGroup = self.view
	local background = display.newImageRect( backGroup,"ui/menu/display.png", display.actualContentWidth, display.actualContentHeight )
	background.x = cX 
	background.y = cY

	local logo = display.newImageRect(mainGroup, "ui/menu/logo.png", 350, 80)
	logo.x = cX -90
	logo.y = cY-90
	
    local play = display.newImageRect(mainGroup, "ui/menu/start.png", 100, 70)
    play.x = cX -200
	play.y = cY +10	
	
    local score = display.newImageRect(mainGroup, "ui/menu/score.png", 100, 70)
	score.x = cX -140
	score.y = cY +80
	
    local quit = display.newImageRect(mainGroup, "ui/menu/quit.png", 90, 50)
	quit.x = cX -40
	quit.y = cY +100

	local help = display.newImageRect(mainGroup, "ui/menu/help.png", 60, 40)
	help.x = cX +80
	help.y = cY +70

	
	
    play:addEventListener( "tap", gotoGame )
	score:addEventListener( "tap", gotoHighscore )
	help:addEventListener( "tap", gotoHelp )
	
	
end


-- show()
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then		
		-- Code here runs when the scene is still off screen (but is about to come on screen)

	elseif ( phase == "did" ) then
		-- Code here runs when the scene is entirely on screen
		audio.play( musicTrack, { channel=1, loops=-1 }) 
	end
end


-- hide()
function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then

	elseif ( phase == "did" ) then
		-- O código aqui é executado imediatamente após a cena sair totalmente da tela
		composer.removeScene("menu")
		display.remove(backGroup)
		print( "Removendo background" )
		display.remove(mainGroup)
		print( "Removendo Botões" )
		composer.hideOverlay()
		audio.stop( 1 )
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
-- -----------------------------------------------------------------------------------



return scene