
background:
//Mover o chão. Dar sensação de movimento

SetSpritePosition(ground, GetSpriteX(ground)-velocity#, GetSpriteY(ground))
SetSpritePosition(box, GetSpriteX(box)-velocity#, GetSpriteY(box))




if GetSpriteX(ground)=-1280
	SetSpritePosition(ground, 0, GetSpriteY(ground))
	SetSpritePosition(box, 810, 478)
endif

/*PrintC("xscroll#: ")
Print(xscroll#)
xscroll#=xscroll#+.003
SetSpriteUVOffset(ground, xscroll#, 0)
*/
return
