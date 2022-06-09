loader:
//backgroung
CreateSprite(LoadImage("sky moon.png"))

//Chão/teto 
x=0
ground=CreateSprite(LoadImage("ground_tam.png"))
SetSpriteSize(ground, 2590, 275)
SetSpritePosition(ground,x, 445)


//obstaculos
placa1=CreateSprite(LoadImage("obstaculo1.1.png"))
placa2=CreateSprite(LoadImage("obstaculo1.2.png"))
espinho1=CreateSprite(LoadImage("obstaculo 2.1.png"))
espinho2=CreateSprite(LoadImage("obstaculo 2.2.png"))
SetSpriteSize(placa1, 80, 80)
SetSpriteSize(placa2, 80, 80)
SetSpriteSize(espinho1, 80, 80)
SetSpriteSize(espinho2, 80, 80)
SetSpritePosition(placa1, 1290, 100)
SetSpritePosition(placa2, 1290, 150)
SetSpritePosition(espinho1, 1290, 250)
SetSpritePosition(espinho2, 1290, 200)




//cria o sprite do ninja
ninja=CreateSprite(LoadImage("idle.png"))
ninjaX=150
ninjaY=405
SetSpritePosition(ninja, ninjaX, ninjaY)


//Seta os shapes
SetSpriteShape(ninja, 2)
SetSpriteShape(ground, 2)

//Criar a animação
AddSpriteAnimationFrame(ninja, LoadImage("walk a.PNG"))
AddSpriteAnimationFrame(ninja, LoadImage("walk b.PNG"))
AddSpriteAnimationFrame(ninja, LoadImage("walk c.PNG"))
AddSpriteAnimationFrame(ninja, LoadImage("walk d.PNG"))


//cria o samurai

//animação do samurai



return
