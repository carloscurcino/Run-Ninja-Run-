
// Project: Run Ninja Run! 
// Created: 2022-05-20

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Run Ninja Run!" )
SetWindowSize( 1280, 720, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1280, 720 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 0 ) // since version 2.0.22 we can use nicer default fonts

SetDefaultWrapU(1)
SetVSync(1)
#include "Loader.agc"
#include "moving.agc"
#include "collision.agc"
#include "obstaculos.agc"
#include "background.agc"
#include "main menu.agc"
#include "gameover.agc"

velocity#=10.0
timer=0
JumpTimer=0
Fall=1
Jump=0
mainmenu=1
gameover=0
score=0
highscore=0
xrand1=Random(1302, 1600)
xrand2=Random(1800, 2000)
Gosub loader
CreateText(4, "score: " +str(score))
SetTextSize(4, 40)
CreateText(5, "Highscore: " +str(highscore))
SetTextSize(5, 40)
SetTextPosition(5, 0, 50)

do
    
    SetTextString(4,"Score: "+str(score))
	SetTextString(5, "Highscore: " +str(highscore))
    //Sistema de maior pontuação
    if score > highscore
		highscore=score
	endif
	
	gosub moving
	gosub collision
	gosub obstaculos
	gosub background
	
	if mainmenu =1
		gosub mainmenu
		//cont=cont+1
	endif
	
    if gameover=1
		gosub gameover
		//cont=cont+1
	endif
    Sync()
loop
