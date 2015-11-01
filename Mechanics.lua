



																																																	--[[
  « Nameless Crusader Interactive »

	ALL RIGHTS RESERVED
__________________________________________________________________________________________________________________________________________________________________

							PROJECT INFORMATION
__________________________________________________________________________________________________________________________________________________________________
 				
						
																																																	                                                                                     																												
       PROJECT STARTED 	( 12 / 10 / 15  ) : ( 19:11 )	
	   PROJECT FINISHED	( 0 / 0 / 0     ) : ( 00:00 )	
	   
__________________________________________________________________________________________________________________________________________________________________

							CODE CANYON STARTS BELOW
__________________________________________________________________________________________________________________________________________________________________
																																														
																																																	--]]																																														--]]	
																																																	
						do
							
							
							
							
							
							
						
						
						
						
						
						
						
						
						
						end																																											
																																																	
																																																	
																																															
																																														


local player = game.Players.LocalPlayer

local char = player.Character or player.CharacterAdded:wait()

local mouse = player:GetMouse()





-- TABLE PREDECLARING

f_dump = {} -- FUNCTION DUMP


do -- LOAD PLAYER
	
	
	-- CONFIG LOADING
      config = player:FindFirstChild("Config")
local tries = 0
repeat 
	config = player:FindFirstChild("Config")
	if config then break end
	tries = tries +1
	wait(0.5)
until tries == 10
if config then
	if tries > 2 then
	print("Located Config after "..tries.." retries")
	else
	print("Failed to locate Config after 1 retry")
	end
else
	print("Failed to locate Config after 10 retries")
end

	-- STATUS LOADING
	
	   status = player:FindFirstChild("Stats")
local tries = 0
repeat 
	config = player:FindFirstChild("Stats")
	if config then break end
	tries = tries +1
	wait(0.5)
until tries == 5
if config then
	if tries > 2 then
	print("Located Config after "..tries.." retries")  -- using 5 retries since we already gave 10 retries to the config ( first priority )
	else
	print("Failed to locate Config after 1 retry")
	end
else
	print("Failed to locate Config after 5 retries")
end
end

do -- PICKUP SYSTEM
	local m = mouse
	
	
	ITEM_SUBCLASSES={
	["WEAPON"]="0X3#XX";
	["HEADGEAR"]="1&0EDD";
	["CHESTRIG"]="2&0EDD";
	["3&0EDD"]="LEGGINGS";	
	["1X5#XX"]="FOOD";
	["001DDE"]="ITEM";	
	}

	
	
	
m.KeyDown:connect(function(key)
	key = key:lower()
	if key == config:WaitForChild("Key_Input")["PICK_UP_KEY"].Value then
		

	
	local item = f_dump.SCAN_ITEM(m.Target,true)
			if item then
				
				
				
				
			end
			
		
	end
end)
end

-- FUNCTION DUMP
do
	
f_dump.SCAN_ITEM=function(spore,pr)
	
	if spore.Parent:FindFirstChild("IT_TOKEN") then
		
		local tok = spore["Parent"]["IT_TOKEN"]
		
		if tok.Value == ITEM_SUBCLASSES
		
	end	
	
end	
	
	
end

