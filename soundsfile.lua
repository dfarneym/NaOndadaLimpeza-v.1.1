--##Musicas##--
menubgmusic = audio.loadStream ("sound/play.mp3")
gameoverbgmusic = audio.loadStream ("sound/HardScore.mp3")
oldbgmusic = audio.loadStream ("sound/HardScore.mp3")


--##Sons##--
jumpBtnAud = audio.loadStream( "sound/Mario_Jumping-Mike_Koenig.wav" )
trashEffect = audio.loadStream( "sound/Trash_Dropping_in_Dumpster.wav" )
trashEffect2 = audio.loadStream( "sound/sweeping_straw_broom-mike-koenig.wav")

 
audio.reserveChannels (2) 

function playSFX (soundfile) 
	audio.play(soundfile, {channel =  2})	 
end 
 
function playGameMusic(soundfile)
	audio.play (soundfile, {channel = 1, loops = -1 , fadein=2500})	
end

 
function resetMusic (soundfile)
 
if musicisOn == true then 
	audio.stop(1)
	audio.rewind (oldbgmusic)
end
 
end
 
function pauseMusic (soundfile)
	if musicisOn == true then 
		audio.pause()
	end
end
 
function resumeMusic (channel)
	if musicisOn == true then 
		audio.resume(channel)
	end
end