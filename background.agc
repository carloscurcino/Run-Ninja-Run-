
background:

/*if score = 200
	velocity#=velocity#*1.2
endif*/

//Mover o chão. Dar sensação de movimento
SetSpritePosition(ground, GetSpriteX(ground)-velocity#, GetSpriteY(ground))
SetSpritePosition(box, GetSpriteX(box)-velocity#, GetSpriteY(box))

if GetSpriteX(ground)=-1280
	SetSpritePosition(ground, 0, GetSpriteY(ground))
	SetSpritePosition(box, 823, 479)
endif



/*PrintC("xscroll#: ")
Print(xscroll#)
xscroll#=xscroll#+.003
SetSpriteUVOffset(ground, xscroll#, 0)
*/
return
