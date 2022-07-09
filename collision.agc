collision:
randy=Random(0, 760)
if GetSpriteCollision(ninja, ground)=1
	ninjaY=403
	SetSpritePosition(ninja, ninjaX, ninjaY)
endif
//Colisão do ninja com os obstaculos
if GetSpriteCollision(ninja, espinho1)=1 or GetSpriteCollision(ninja, espinho2)=1 or GetSpriteCollision(ninja, box)=1
	xrand1=Random(1302, 1600)
	if GetSpriteX(box)=xrand1
		xrand1=Random(1302, 1600)
	endif
	xrand2=Random(1800, 2200)
	if GetSpriteX(box)=xrand2
		xrand2=Random(1800, 2200)
	endif
	if xrand1<>GetSpriteX(box)
		SetSpritePosition(espinho1, xrand1, 412)
	endif
	if xrand2<>GetSpriteX(box)
		SetSpritePosition(espinho2, xrand2, 412)
	endif	
	score=0
	gameover=1
	Movement=0
	Fall=1
	JumpTimer=0
	Jump=0
	StopSprite(ninja)
	SetSpriteFrame(ninja, 5)
endif
//Colisão do ninja com o buraco
if GetSpriteCollision(ninja, box)=1
	SetSpritePosition(box, GetSpriteX(box)-150, 479)
	score=0
	gameover=1
	Movement=0
	Fall=1
	JumpTimer=0
	Jump=0
	StopSprite(ninja)
	SetSpriteFrame(ninja, 5)
endif


/*
if GetSpriteCollision(box, espinho1)
	SetSpritePosition(espinho1, GetSpriteX(espinho1)+1000, GetSpriteY(espinho1))
endif
	
if GetSpriteCollision(box, espinho2)
	SetSpritePosition(espinho2, GetSpriteX(espinho2)+1000, GetSpriteY(espinho2))
endif
*/


//Para os espinhos não ficarem colados(talvez não seja mt necessário)
if GetSpriteCollision(espinho1, espinho2)
	SetSpritePosition(espinho1, GetSpriteX(espinho1)+300, GetSpriteY(espinho1))
endif

return

