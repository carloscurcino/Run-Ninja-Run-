obstaculos:

//1160 e 1302
//2976 e 3141

SetSpritePosition(espinho1, GetSpriteX(espinho1)-velocity#, 412)
SetSpritePosition(espinho2, GetSpriteX(espinho2)-velocity#, 412)
	
//Se o espinho1 sair da tela
if GetSpriteX(espinho1)<0 
	xrand1=Random(1310, 1600)
	if GetSpriteX(box)=xrand1 
		xrand1=Random(1310, 1600)
	elseif GetSpriteCollision(box, espinho1)=0
		SetSpritePosition(espinho1, xrand1, 412)
	endif
endif



//Se o espinho2 sair da tela
if GetSpriteX(espinho2)<0
	xrand2=Random(1800, 2200)
	if GetSpriteX(box)=xrand2 
		xrand2=Random(1800, 2200)
	elseif GetSpriteCollision(box, espinho2)=0	
		SetSpritePosition(espinho2, xrand2, 412)
	endif
endif


if (xrand2-xrand1)<200 
			xrand2=xrand2+200
			//xrand2=Random(1800, 2000)
			SetSpritePosition(espinho2, xrand2, 412)
endif




return

