obstaculos:

//1160 e 1302
//2976 e 3141

SetSpritePosition(espinho1, GetSpriteX(espinho1)-velocity, 412)
SetSpritePosition(espinho2, GetSpriteX(espinho2)-velocity, 412)
SetSpritePosition(samurai, GetSpriteX(samurai)-velocity, GetSpriteY(samurai))

if score=1000
	xrand3=Random(2300, 2600)
	SetSpritePosition(samurai, xrand3, 383)
elseif score < 1000 and gameover=0
	SetSpritePosition(samurai, xrand3, -500)
endif

//Se o espinho1 sair da tela
if GetSpriteX(espinho1)<-15
		xrand1=Random(1280, 1600)
		SetSpritePosition(espinho1, xrand1, 412)
endif



//Se o espinho2 sair da tela
if GetSpriteX(espinho1)=1150 and GetSpriteX(espinho2)<0
		xrand2=Random(1800, 2200)
		SetSpritePosition(espinho2, xrand2, 412)
endif

if GetSpriteX(espinho2)=1000 or GetSpriteX(samurai)<-15
		xrand3=Random(2300, 2600)
		SetSpritePosition(samurai, xrand3, GetSpriteY(samurai))
endif


return

