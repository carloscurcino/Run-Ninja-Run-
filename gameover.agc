gameover:
StopMusicOGG(menumusic)
PlayMusicOGG(gameovermusic)
SetSpriteVisible(screengameover, 1)
SetSpriteVisible(ground, 0)
tecla=CreateText("Click to play again")
SetTextSize(tecla, 60)
SetTextPosition(tecla, 250, 500)
SetTextFont(tecla, font)
SetTextColor(tecla, 255, 255, 0, 177)	
SetTextVisible(4, 0)
SetTextVisible(5, 0)
gosub Hidegamesprites
gosub Showgameovertext
PlayMusicOGG(gameovermusic)

repeat
	sync()
until GetPointerPressed()=1 or GetRawKeyPressed(32) or GetRawKeyPressed(87) or GetRawKeyPressed(38) or GetRawKeyPressed(27)
if GetRawKeyPressed(27)
		xrand1=Random(1280, 1600)
		xrand2=Random(1800, 2200)
		xrand3=Random(2300, 2600)
		SetSpritePosition(espinho1, xrand1, 412)
		SetSpritePosition(espinho2, xrand2, 412)
		mainmenu=1
		score=0
		velocity=10
		Movement=0
		Fall=1
		JumpTimer=0
		Jump=0
endif

StopMusicOGG(gameovermusic)
PlayMusicOGG(menumusic)
SetSpriteVisible(screengameover, 0)
SetSpriteVisible(ground, 1)
SetTextVisible(4, 1)
SetTextVisible(5, 1)
SetSpritePosition(samurai, xrand3, 383)
gameover=0
SetSpriteFrame(samurai, 2)
gosub Showgamesprites
gosub Hidegameovertext

return

Hidegameovertext:
SetTextVisible(tecla, 0)

return

Showgameovertext:
SetTextVisible(tecla, 1)

return


