credits:
//SetSpriteVisible(creditsscreen, 1)
creditsscreen=CreateSprite(LoadImage("credits.png"))
SetSpriteVisible(ninja, 0)
gosub Hidegamesprites
 
repeat
	sync()
until GetPointerPressed()=1 or GetRawKeyPressed(32) or GetRawKeyPressed(32) or GetRawKeyPressed(87) or GetRawKeyPressed(38)
	end
return
