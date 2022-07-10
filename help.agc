help:
SetSpriteVisible(help, 1)
SetSpriteVisible(ninja, 0)
SetSpriteVisible(helpbutton, 0)
gosub Hidegamesprites

SetTextVisible(4, 0)
SetTextVisible(5, 0) 
SetSpriteVisible(playbutton, 0)
SetSpriteVisible(exitbutton, 0)
repeat
	sync()
until GetRawKeyPressed(27)
return


