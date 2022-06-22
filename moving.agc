moving:
score=score+1
PrintC("Movement: ")
print(movement)
if GetSpriteCollision(ninja,ground) = 1 or Jump = 1 
		Fall=0  
		
else
		Fall=1 
			
endif	    
			
if Fall=0 	
	ninjaY=ninjaY+0  
		
elseif Fall=1  
	ninjaY=ninjaY+3
endif
	
if GetRawKeyPressed(32)  			
	Jump=1  
endif	

if Jump=1 
		SetSpritePosition(ninja,ninjaX,ninjaY)
		Fall=0
		JumpTimer=JumpTimer+2
		Movement=15
		StopSprite(ninja)
		SetSpriteFrame(ninja, 6)
			if JumpTimer<35
				ninjaY=ninjaY-Movement
				//SetSpritePosition(ninja,ninjaX,ninjaY-Movement)
			elseif JumpTimer>37
				ninjaY=ninjaY+Movement-5
				//SetSpritePosition(ninja,ninjaX,ninjaY+Movement)
						
				
			endif					
	
		if GetSpriteCollision(ninja,ground)=1 and JumpTimer >35
			PlaySprite(ninja, velocity#, 1, 1, 4)
			Movement=0
			Fall=1
			JumpTimer=0
			Jump=0
			
			
		endif	
endif	



return

