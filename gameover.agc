gameover:
SetSpriteVisible(screengameover, 1)
SetSpriteVisible(ground, 0)
tecla=CreateText("Clique para iniciar")
SetTextSize(tecla, 60)
SetTextPosition(tecla, 250, 500)
SetTextFont(tecla, font)
SetTextColor(tecla, 0, 175, 175, 255)	

gosub Hidegamesprites
gosub Showgameovertext

repeat
	sync()
until GetPointerPressed()=1 or GetRawKeyPressed(32) or GetRawKeyPressed(87) or GetRawKeyPressed(38) 
SetSpriteVisible(screengameover, 0)
SetSpriteVisible(ground, 1)
gameover=0
gosub Showgamesprites
gosub Hidegameovertext

return

Hidegameovertext:
SetTextVisible(tecla, 0)

return

Showgameovertext:
SetTextVisible(tecla, 1)

return


