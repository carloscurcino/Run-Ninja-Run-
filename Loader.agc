loader:
//backgroung
sun=CreateSprite(LoadImage("sky sun.png"))
SetSpritePosition(sun, GetSpriteX(sun), -170)
moon=CreateSprite(LoadImage("sky moon1.png"))
SetSpritePosition(moon, GetSpriteX(moon)-20, -170)
SetSpriteVisible(moon, 1)
//Chão/teto 
x=0
screengameover=CreateSprite(LoadImage("gameover2.png"))
SetSpriteSize(screengameover, 1320, 720)
SetSpritePosition(screengameover, GetSpriteX(screengameover)-20, GetspriteY(screengameover))
SetSpriteVisible(screengameover, 0)
screenmainmenu=CreateSprite(LoadImage("main menu.png"))
SetSpriteSize(screenmainmenu, 1320, 720)
SetSpritePosition(screenmainmenu, GetSpriteX(screenmainmenu)-20, GetspriteY(screenmainmenu))
SetSpriteVisible(screenmainmenu, 0)
//creditsscreen=CreateSprite(LoadImage("credits.png"))
//SetSpriteVisible(creditsscreen, 0)
help=CreateSprite(LoadImage("help.png"))
SetSpriteVisible(help, 0)
playbutton=CreateSprite(LoadImage("play button1.png"))
exitbutton=CreateSprite(LoadImage("exit button1.png"))

SetSpriteSize(playbutton, 530, 250)
SetSpritePosition(playbutton, 380, 400)
SetSpriteSize(exitbutton, 480, 200)
SetSpritePosition(exitbutton, 405, 510)
helpbutton=CreateSprite(LoadImage("help button.png"))
SetSpriteSize(helpbutton, 70, 70)
SetSpritePosition(helpbutton, 1100, 570)

ground=CreateSprite(LoadImage("ground_tamz.png"))
SetSpriteSize(ground, 2590, 275)
SetSpritePosition(ground,x, 445)

font=LoadFont("04B_30__.ttf")

//obstaculos

espinho1=CreateSprite(LoadImage("obstaculo 2.1.png"))
espinho2=CreateSprite(LoadImage("obstaculo 2.2.png"))
SetSpriteSize(espinho1, 80, 80)
SetSpriteSize(espinho2, 80, 80)
SetSpritePosition(espinho1, xrand1, 412)
SetSpritePosition(espinho2, xrand2, 412)
//Obstaculo/ Samurao
samurai=CreateSprite(LoadImage("samurai stand.png"))
SetSpriteSize(samurai, 130, 130)
SetSpritePosition(samurai, xrand3, -500)
AddSpriteAnimationFrame(samurai, LoadImage("samurai attack.png"))
AddSpriteAnimationFrame(samurai, LoadImage("samurai stand.png"))

/*
box=CreateSprite(CreateImageColor(255, 255, 255, 255)) //Cria um 'hitbox' invisivel
SetSpriteSize(box, 90, 90)
SetSpritePosition(box, 823, 479)
SetSpriteVisible(box, 0)*/


//cria o sprite do ninja
ninja=CreateSprite(LoadImage("idle.png"))
ninjaX=150
ninjaY=400
SetSpritePosition(ninja, ninjaX, ninjaY)



//Seta os shapes
SetSpriteShape(ninja, 3)
SetSpriteShape(ground, 3)
SetSpriteShape(samurai, 3)
SetSpriteShape(exitbutton, 3)
SetSpriteShape(playbutton, 3)

//Criar a animação
AddSpriteAnimationFrame(ninja, LoadImage("walk a.PNG"))
AddSpriteAnimationFrame(ninja, LoadImage("walk b.PNG"))
AddSpriteAnimationFrame(ninja, LoadImage("walk c.PNG"))
AddSpriteAnimationFrame(ninja, LoadImage("walk d.PNG"))
AddSpriteAnimationFrame(ninja, LoadImage("dead.png"))
AddSpriteAnimationFrame(ninja, LoadImage("jump.png"))
PlaySprite(ninja, velocity, 1, 1, 4)


//Músicas
menumusic=LoadMusicOGG("epic.ogg")

gameovermusic=LoadMusicOGG("narutosad.ogg")

//Sons
jumpsound=LoadSound("jump.wav")
deathsound1=LoadSound("minecraftdeath.wav")
deathsound2=LoadSound("robloxdeath.wav")


return

