mainmenu:

text1=CreateText("RUN NINJA RUN!!!")
SetTextSize(text1, 80)
SetTextPosition(text1, 100, 180)
SetTextFont(text1, font)

text2=CreateText("Clique para iniciar")
SetTextSize(text2, 40)
SetTextPosition(text2, 400, 660)
SetTextFont(text2, font)

gosub Hidegamesprites
gosub Showmenutext

repeat
	sync()
until GetPointerPressed()=1 or GetRawKeyPressed(32) or GetRawKeyPressed(32) or GetRawKeyPressed(87) or GetRawKeyPressed(38)

mainmenu=0
gosub Showgamesprites
gosub Hidemenutext

return


Hidegamesprites:
SetSpriteVisible(espinho1, 0)
SetSpriteVisible(espinho2, 0)
return

Showgamesprites:
ninjaX=150
ninjaY=400
SetSpritePosition(ninja, ninjaX, ninjaY)
PlaySprite(ninja, velocity#, 1, 1, 4)
SetSpriteVisible(espinho1, 1)
SetSpriteVisible(espinho2, 1)
return

Hidemenutext:
SetTextVisible(text1, 0)
SetTextVisible(text2, 0)

return

Showmenutext:
SetTextVisible(text1, 1)
SetTextVisible(text2, 1)

return

