collision:
//Não passar do chão
if GetSpriteCollision(ninja, ground)=1
	ninjaY=403
	SetSpritePosition(ninja, ninjaX, ninjaY)
endif

//Colisão do ninja com os obstaculos
if GetSpriteCollision(ninja, espinho1)=1 or GetSpriteCollision(ninja, espinho2)=1 
		PlaySound(deathsound1)
		xrand1=Random(1280, 1600)
		xrand2=Random(1800, 2200)
		xrand3=Random(2300, 2600)
		SetSpritePosition(espinho1, xrand1, 412)
		SetSpritePosition(espinho2, xrand2, 412)
		SetSpritePosition(samurai, xrand3, GetSpriteY(samurai))
	//endif	
	score=0
	gameover=1
	velocity=10
	Movement=0
	Fall=1
	JumpTimer=0
	Jump=0
	StopSprite(ninja)
	SetSpriteFrame(ninja, 5)
endif
//Colisão do ninja com o samurai
If GetSpriteCollision(ninja, samurai)=1
	SetSpriteFrame(samurai, 1)
	PlaySound(deathsound1)
	xrand1=Random(1280, 1600)
	xrand2=Random(1800, 2200)
	xrand3=Random(2300, 2600)
	SetSpritePosition(espinho1, xrand1, 412)
	SetSpritePosition(espinho2, xrand2, 412)	
	score=0
	gameover=1
	velocity=10
	Movement=0
	Fall=1
	JumpTimer=0
	Jump=0
	StopSprite(ninja)
	SetSpriteFrame(ninja, 5)
endif
	
if GetSpriteCollision(ninja, samurai)=0
	//SetSpriteFrame(samurai, 2)
endif


return

