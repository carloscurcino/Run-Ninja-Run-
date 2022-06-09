moving:

printc("Jumping: ")
Print(jumping)
PrintC("Jump Timer: ")
Print(JumpTimer)
//MOVIMENTOS DO PERSONAGEM ex: pular e atirar
JumpTimer=0
fall=0
jumping=0


	//Segundo o carinha do tutorial isso faz um efeito de gravidade(meio fajuta mas faz)
if GetSpriteCollision(ninja, ground)=1 or jumping=1
	fall=0
else
	fall=1
endif

	//Faz o ninja cair depois de pular
if fall=0
	//ninjaY=ninjaY+0
	SetSpritePosition(ninja, 150, ninjaY+0)
elseif fall=1
	//ninjaY=ninjaY+3
	SetSpritePosition(ninja, 150, ninjaY+3)
endif

	//Inicia o processo de pullar
if GetRawKeyPressed(32) or GetRawKeyPressed(87)
	jumping=1
endif

if jumping=1
	fall=0
	JumpTimer=JumpTimer+1
	//Enquanto o contador for menor que 5 o personagem sobe
	if JumpTimer <=80
		//ninjaY=ninjaY-2
		SetSpritePosition(ninja, 150, ninjaY-2)
	elseif JumpTimer>80 //Se não ele desce
		//ninjaY=ninjaY+2
		SetSpritePosition(ninja, 150, ninjaY+2)
	endif
	
	//seta tudo pra zero de novo
	if GetSpriteCollision(ninja, ground)=1 and JumpTimer>80
		fall=0
		JumpTimer=0
		jumping=0
	endif
endif		

//Mover o chão. Dar sensação de movimento


SetSpritePosition(ground, GetSpriteX(ground)-velocity#, GetSpriteY(ground))


if GetSpriteX(ground)=-1280
	SetSpritePosition(ground, 0, GetSpriteY(ground))
endif

return
