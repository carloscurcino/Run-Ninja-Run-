mainmenu:
SetSpriteVisible(screenmainmenu, 1)
SetSpriteVisible(help, 0)
text2=CreateText("Click to start")
SetTextSize(text2, 40)
SetTextPosition(text2, 430, 660)
SetTextFont(text2, font)
SetTextColor(text2, 0, 0, 0, 255)
SetSpriteVisible(ninja, 0)
gosub Hidegamesprites
gosub Showmenutext

SetTextVisible(4, 0)
SetTextVisible(5, 0) 
SetSpriteVisible(playbutton, 1)
SetSpriteVisible(exitbutton, 1)
SetSpriteVisible(helpbutton, 1)
PlayMusicOGG(menumusic)

repeat
	sync()
until (GetPointerPressed()=1 and GetSpriteHitTest(exitbutton, GetPointerX(), GetPointerY())) or (GetPointerPressed()=1 and GetSpriteHitTest(playbutton, GetPointerX(), GetPointerY())) or (GetPointerPressed()=1 and GetSpriteHitTest(helpbutton, GetPointerX(), GetPointerY()))
if GetSpriteHitTest(exitbutton, GetPointerX(), GetPointerY())
	end
elseif GetSpriteHitTest(playbutton, GetPointerX(), GetPointerY())
	mainmenu=0
elseif GetSpriteHitTest(helpbutton, GetPointerX(), GetPointerY())
	gosub help
endif
//GetPointerPressed()=1 or GetRawKeyPressed(32) or GetRawKeyPressed(32) or GetRawKeyPressed(87) or GetRawKeyPressed(38)
//StopMusic()

mainmenu=0
SetTextVisible(4, 1)
SetTextVisible(5, 1)
SetSpriteVisible(screenmainmenu, 0)
SetSpriteVisible(ninja, 1)
SetSpriteVisible(playbutton, 0)
SetSpriteVisible(exitbutton, 0)
SetSpriteVisible(helpbutton, 0)

gosub Showgamesprites
gosub Hidemenutext

return


Hidegamesprites:
SetSpriteVisible(espinho1, 0)
SetSpriteVisible(espinho2, 0)
SetSpriteVisible(ground, 0)
return

Showgamesprites:
ninjaX=150
ninjaY=400
SetSpritePosition(ninja, ninjaX, ninjaY)
PlaySprite(ninja, velocity, 1, 1, 4)
SetSpriteVisible(espinho1, 1)
SetSpriteVisible(espinho2, 1)
SetSpriteVisible(ninja, 1)
SetSpriteVisible(ground, 1)
return

Hidemenutext:
SetTextVisible(text2, 0)

return

Showmenutext:
SetTextVisible(text2, 1)

return

