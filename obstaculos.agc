obstaculos:
rand=Random(3,5)
rand2=Random(1290, 1360)
SetSpritePosition(placa2, 1290, 405)
SetSpritePosition(espinho1, 1290, 250)
SetSpritePosition(espinho2, 1290, 200)

timer=timer+1

SetSpritePosition(placa1, GetSpriteX(placa1)-velocity#, 410)

if(rand=3)
	rand=Random(1,5)
	
endif

if GetSpriteX(placa1)=-10
	SetSpritePosition(placa1, rand2, 405)
	rand=Random(3, 5)
	rand2=Random(1290, 1300)
endif

if timer>5
	timer=0
endif

return
