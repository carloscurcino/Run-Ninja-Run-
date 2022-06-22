collision:
randy=Random(0, 760)
if GetSpriteCollision(ninja, ground)=1
	ninjaY=403
	SetSpritePosition(ninja, ninjaX, ninjaY)
endif

if GetSpriteCollision(ninja, espinho1)=1 or GetSpriteCollision(ninja, espinho2)=1 or GetSpriteCollision(ninja, box)=1
	SetSpritePosition(espinho1, 1290, 100)
	SetSpritePosition(espinho2, 1800, 100)
	//rand2=Random(1290, 1400) 
	score=0
	gameover=1
	Movement=0
	Fall=1
	JumpTimer=0
	Jump=0
	StopSprite(ninja)
	SetSpriteFrame(ninja, 5)
endif

if GetSpriteCollision(ninja, box)=1
	SetSpritePosition(box, 810, 480)
	score=0
	gameover=1
	Movement=0
	Fall=1
	JumpTimer=0
	Jump=0
	StopSprite(ninja)
	SetSpriteFrame(ninja, 5)
endif


return

