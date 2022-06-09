
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
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

#include "Loader.agc"
#include "moving.agc"
#include "collision.agc"
#include "obstaculos.agc"

velocity#=10.0
timer=0

Gosub loader

do
    
	gosub moving
	gosub collision
	gosub obstaculos
    
    Sync()
loop
