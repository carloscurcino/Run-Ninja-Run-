obstaculos:
rand=Random(1,4)



timer=timer+1

SetSpritePosition(espinho1, GetSpriteX(espinho1)-velocity#, 412)
SetSpritePosition(espinho2, GetSpriteX(espinho2)-velocity#, 412)

if GetSpriteX(espinho2)<0
	SetSpritePosition(espinho2, 1800, 412)
endif 

if GetSpriteX(espinho1)<0
	SetSpritePosition(espinho1, 1290, 412)
endif


/*if GetSpriteX(placa1)= 640
	rand=Random(1,4)
endif

if rand=1
	SetSpritePosition(placa1, GetSpriteX(placa1)-velocity#, 410)
elseif rand=2
	SetSpritePosition(placa2, GetSpriteX(placa2)-velocity#, 410)
elseif rand=3
	SetSpritePosition(espinho1, GetSpriteX(espinho1)-velocity#, 410)
elseif rand=3
	SetSpritePosition(espinho2, GetSpriteX(espinho2)-velocity#, 410)
endif
*/


return

