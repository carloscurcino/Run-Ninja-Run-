
background:
if score =0
	SetSpriteVisible(moon, 1)
	SetTextColor(5, 255, 255, 255, 255)
	SetTextColor(4, 255, 255, 255, 255)
elseif score =1500
	sleep(100)
	SetSpriteVisible(moon, 0)
	SetTextColor(5, 0, 0, 0, 255)
	SetTextColor(4, 0, 0, 0, 255)
elseif score = 3000
	sleep(100)
	SetSpriteVisible(moon, 1)
	SetTextColor(5, 255, 255, 255, 255)
	SetTextColor(4, 255, 255, 255, 255)
elseif score=5000
	sleep(100)
	SetSpriteVisible(moon, 0)
	SetTextColor(5, 0, 0, 0, 255)
	SetTextColor(4, 0, 0, 0, 255)
elseif score=6500
	sleep(100)
	SetSpriteVisible(moon, 1)
	SetTextColor(5, 255, 255, 255, 255)
	SetTextColor(4, 255, 255, 255, 255)
elseif score= 8000
	sleep(100)
	SetSpriteVisible(moon, 0)
	SetTextColor(5, 0, 0, 0, 255)
	SetTextColor(4, 0, 0, 0, 255)
elseif score=9000
	sleep(100)
	SetSpriteVisible(moon, 1)
	SetTextColor(5, 255, 255, 255, 255)
	SetTextColor(4, 255, 255, 255, 255)
endif


//Mover o chão. Dar sensação de movimento
SetSpritePosition(ground, GetSpriteX(ground)-velocity, GetSpriteY(ground))

if GetSpriteX(ground)<-1280.0
	SetSpritePosition(ground, x-0, GetSpriteY(ground))
endif


/*PrintC("xscroll#: ")
Print(xscroll#)
xscroll#=xscroll#+.003
SetSpriteUVOffset(ground, xscroll#, 0)
*/
return
