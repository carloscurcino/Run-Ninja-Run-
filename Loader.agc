loader:
//backgroung
CreateSprite(LoadImage("sky moon.png"))

//Chão/teto 
x=0
ground=CreateSprite(LoadImage("ground_tam1.png"))
SetSpriteSize(ground, 2590, 275)
SetSpritePosition(ground,x, 445)


//obstaculos
xrand=Random(1290, 1400)
espinho1=CreateSprite(LoadImage("obstaculo 2.1.png"))
espinho2=CreateSprite(LoadImage("obstaculo 2.2.png"))
SetSpriteSize(espinho1, 80, 80)
SetSpriteSize(espinho2, 80, 80)
SetSpritePosition(espinho1, 1290, 412)
SetSpritePosition(espinho2, 1800, 412)

box=CreateSprite(CreateImageColor(255, 255, 255, 255)) //Cria um 'hitbox' invisivel
SetSpriteSize(box, 100, 100)
SetSpritePosition(box, 810, 478)
SetSpriteVisible(box, 0)


//cria o sprite do ninja
ninja=CreateSprite(LoadImage("idle.png"))
ninjaX=150
ninjaY=400
SetSpritePosition(ninja, ninjaX, ninjaY)



//Seta os shapes
SetSpriteShape(ninja, 3)
SetSpriteShape(ground, 3)

//Criar a animação
AddSpriteAnimationFrame(ninja, LoadImage("walk a.PNG"))
AddSpriteAnimationFrame(ninja, LoadImage("walk b.PNG"))
AddSpriteAnimationFrame(ninja, LoadImage("walk c.PNG"))
AddSpriteAnimationFrame(ninja, LoadImage("walk d.PNG"))
AddSpriteAnimationFrame(ninja, LoadImage("dead.png"))
AddSpriteAnimationFrame(ninja, LoadImage("jump.png"))
PlaySprite(ninja, velocity#, 1, 1, 4)


//cria o samurai

//animação do samurai



return

