
local composer = require "composer"

local level = require("leveltemplate")

--### Remove o botão ###--
if system.getInfo( "androidApiLevel" ) and system.getInfo( "androidApiLevel" ) < 19 then
  native.setProperty( "androidSystemUiVisibility", "lowProfile" )
else
  native.setProperty( "androidSystemUiVisibility", "immersiveSticky" ) 
end

function game()
	
	composer.gotoScene( "scene.menu", { params={ } } )
end

game()