local composer = require("composer") 	 	
local physics = require("physics") 		 	

local sounds = require( "soundsfile" )	 	

local level = require("leveltemplate")		
local scene = composer.newScene()	


--## Initialize variables ##--
local json = require( "json" )

local scoresTable = {}

local filePath = system.pathForFile( "scores.json", system.DocumentsDirectory )

local musicTrack


local function loadScores()

	local file = io.open( filePath, "r" )

	if file then
		local contents = file:read( "*a" )
		io.close( file )
		scoresTable = json.decode( contents )
	end

	if ( scoresTable == nil or #scoresTable == 0 ) then
		scoresTable = { 0, 0, 0, 0, 0 }
	end
end


local function saveScores()

	for i = #scoresTable, 6, -1 do
		table.remove( scoresTable, i )
	end

	local file = io.open( filePath, "w" )

	if file then
		file:write( json.encode( scoresTable ) )
		io.close( file )
	end
end


local function gotoMenu()
	composer.gotoScene( "scene.menu", { time=800, effect="crossFade" } )
end


-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

--## Criando sena ##--
function scene:create( event )

	local sceneGroup = self.view
	
	loadScores()

	--### Insira a pontuação salva do último jogo na tabela ### --
	table.insert( scoresTable, composer.getVariable( "finalScore" ) )
	composer.setVariable( "finalScore", 0 )

	--### Classifique as entradas da tabela da maior para a menor ###--
	local function compare( a, b )
		return a > b
	end
	table.sort( scoresTable, compare )

	-- ### Salvando as Scores ### --
	saveScores()

	background = display.newImageRect( sceneGroup, "ui/background/help.png", 600, 320 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY
	
	local backButton = display.newImageRect( sceneGroup, "ui/background/menu.png", 80, 80 )
	backButton.x = display.contentCenterX -220
	backButton.y = display.contentCenterY +120

	backButton:addEventListener( "tap", gotoMenu )
		

	musicTrack = audio.loadStream( "sound/HardScore.mp3" )
end


--### Mostrando ###--
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is still off screen (but is about to come on screen)

	elseif ( phase == "did" ) then
		-- Code here runs when the scene is entirely on screen
		-- Start the music!
		audio.play( musicTrack, { channel=1, loops=-1 } )
	end
end


-- hide()
function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is on screen (but is about to go off screen)

	elseif ( phase == "did" ) then
		-- Code here runs immediately after the scene goes entirely off screen
		-- Stop the music!
		audio.stop( 1 )
		composer.removeScene( "highscore" )
	end
end


-- destroy()
function scene:destroy( event )

	local sceneGroup = self.view
	-- Code here runs prior to the removal of scene's view
	-- Dispose audio!
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
