Tempo_Reanimar = {}
local redda = 0
local dutyLevel = 0
local  healmebug = 0
local tx,ty,tz= -178.07421875, 2416.2685546875, 21.427238464355

function Remove_Colete (hitElement, Danos)
	setPedArmor(hitElement, getPedArmor(hitElement) -Danos)
end
addEvent("DNL:setPedAmor(Danos)", true)
addEventHandler("DNL:setPedAmor(Danos)", root, Remove_Colete)

	                               --=============================--
                                   -------- VERIFICAR HT PED -------
                                 --=============================--

function getHealthPlayer (thePlayer)
	for i, player in pairs (getElementsByType("player")) do
	local playerID = getElementData ( player, "playerid" ) or 0 
		if getElementHealth(player) > 0 and getElementHealth(player) < 35 then 
			if getElementData(player, "DNL:Derrubado") == false then
				setElementFrozen(player, true)
				setElementData(player, "DNL:Derrubado", true)
				removePedFromVehicle(player)
				setPedWeaponSlot ( player, 0)
				setPedAnimation(player, "SWEET", "Sweet_injuredloop", -1, false, false, false, true)
				triggerClientEvent(player, "DNL:HP_30", root)
				 
				-------------------------------------------------------------------------------------------------------------------
				
				triggerClientEvent(player, "hideInventory", player)
				--outputChatBox("budu ammoooooooooooooooooooooooo")
 
         			 local x1, y1, z1 = getElementPosition(player)
				local p1x,p1y,p1z =  10.9345703125, 1376.9091796875, 9.171875
				--turf city player spawn script update by Eranda
				 
			 	 if getDistanceBetweenPoints3D(p1x,p1y,p1z, x1, y1, z1) < 70  then
					--gas wawana ata kade laga
					setElementPosition(player,  -83.8720703125,1356.7255859375,10.991551399231)

				elseif getDistanceBetweenPoints3D( x1, y1, z1, -198.34375, 2694.6376953125, 62.6875) < 70 then
					-- kukulage kade laga
					setElementPosition(player, -276.236328125, 2672.962890625, 63.120567321777)

				elseif getDistanceBetweenPoints3D( x1, y1, z1,  -749.0361328125, 2789.4287109375, 49.259307861328) < 70 then
					--tng base eka
					setElementPosition(player, -757.4228515625, 2705.8701171875, 49.382930755615)

				elseif getDistanceBetweenPoints3D( x1, y1, z1,  -1486.283203125, 2656.19921875, 55.8359375) < 70 then
					--wathura tangiya uda
					setElementPosition(player, -1405.35546875, 2641.3828125, 55.6875)

				elseif getDistanceBetweenPoints3D( x1, y1, z1,  -1390.1767578125, 2207.8154296875, 48.612037658691) < 70 then
					--sed eka lagahulan peththa
					setElementPosition(player, -1411.3876953125, 2287.63671875, 55.272933959961)

				elseif getDistanceBetweenPoints3D( x1, y1, z1,  -1475.9912109375, 1991.25390625, 47.90172958374) < 70 then
					--mada hulanpeththa
					setElementPosition(player, -1411.6552734375, 1927.85546875, 51.381393432617)

				elseif getDistanceBetweenPoints3D( x1, y1, z1,  -753.177734375, 1590.4755859375, 26.9609375) < 70 then
					--palama gawa
					setElementPosition(player, -825.96484375, 1535.3427734375, 26.788951873779)

				elseif getDistanceBetweenPoints3D( x1, y1, z1,  708.771484375, 2001.205078125, 4.9375) < 70 then
					--pare gedara
					setElementPosition(player, 652.4462890625, 1934.955078125, 5.4615631103516)

				elseif getDistanceBetweenPoints3D( x1, y1, z1,  -409.67578125, 2228.2333984375, 42.425819396973) < 70 then
					--kanda laga
					setElementPosition(player, -318.609375, 2143.7021484375, 50.062850952148)

				elseif getDistanceBetweenPoints3D( x1, y1, z1,  -776.0791015625, 2432.45703125, 157.09167480469) < 70 then
					--kanda laga
					setElementPosition(player, -796.33984375, 2322.4169921875, 141.8210144043)


				end
	
				 
				local dist = getDistanceBetweenPoints3D(tx,ty,tz, x1, y1, z1)
				
				if dist < 1150 or  getDistanceBetweenPoints3D( x1, y1, z1,  -1047.58203125, 2060.8359375, 107.39594268799) < 800 then
				  	--outputChatBox (" ✘ පණිවිඩයකි ✘➺  ඔබ සිටින්නේ රජයේ පරිපාළන සීමාවේ නොවේ.. ඔබට මෙඩි පැක් තිබේ නම් එය භාවිතා කරන්න .", player, 0, 152, 240,true)
				 
				else
				--outputChatBox ( " ✘ පණිවිඩයකි ✘➺  ඩොක්ටර් කෙනෙක් ඉක්මනට  යන්න .",source,235, 16, 16,true )	
				--outputChatBox("අංක "..playerID.." ක්‍රීඩකයා තුවාල වී ඇත ඔහුට උදව් කරන්න",source,235, 16, 16,true)
				end
 
				


				Tempo_Reanimar = setTimer(
				function()
					if getElementData(player, "DNL:Derrubado") == true then	
						killPed(player)
						setElementFrozen(player, false )
						setElementData(player, "DNL:Derrubado", false)
						killPed(player)
						--destroyElement(myBlip)
						outputChatBox ( "#00ff00✘ #ffffffINFO#00ff00✘➺ #ffffff You did not live and die", player, 255,255,255,true)
						
					end
				end, 480000, 1)
				--end, 4000, 1)
			end
		end		
		
		if getElementHealth(player) > 35 and getElementData(player, "DNL:Derrubado") == true then 
			setElementData(player, "DNL:Derrubado", false)
			setPedAnimation(player, false)
			setElementFrozen(player, false )
			triggerClientEvent(player, "DNL:Fechar_HP_30", root)
			
			--destroyElement(myBlip)


				local x1, y1, z1 = getElementPosition(player)
				local dist = getDistanceBetweenPoints3D(tx,ty,tz, x1, y1, z1)
				if dist < 1150 or  getDistanceBetweenPoints3D( x1, y1, z1,  -1047.58203125, 2060.8359375, 107.39594268799) < 800 then
					
				else
				outputChatBox ( "#00ff00✘ #ffffffINFO #00ff00✘➺ #ffffff You are revived and you will not die", player, 255,255,255,true)
				 
				--outputChatBox("✘ අංක "..playerID.." ක්‍රිඩකයා ✘➺ ඩොක්ටර් එන්න එපා සැපේ ඉන්නේ ",source,204, 24, 150,true)
				end
			

		end
	end
end


setTimer(getHealthPlayer, 50, 0)
-----------------------


function Verificar_Anim ()
	for i, player in pairs (getElementsByType("player")) do
		if getElementHealth(player) > 0 and getElementHealth(player) < 20 then 
			if getElementData(player, "DNL:Derrubado") == true then
				setPedAnimation(player, "SWEET", "Sweet_injuredloop", -1, false, false, false, true)
			end
		end
	end
end
setTimer(Verificar_Anim, 1400, 0)
	                               --=============================--
                                   ----------- CURAR PED -----------
                                   --=============================--
function Curar_Cidadao (source, _, id)
if(id) then
local playerID = tonumber(id)
if(playerID) then
	local Player_2 = getPlayerID(playerID)
		if isElement(Player_2) then 	
            if exports.factions:getPlayersInFaction(2) then
				if Player_2 == source then outputChatBox ( "#00ff00✘ #ffffffINFO#00ff00✘➺ #ffffff You can't heal", source, 255,255,255,true) return end	 
				local medico_X, medico_Y, medico_Z = getElementPosition ( source )
				local vitima_X, vitima_Y, vitima_Z = getElementPosition ( Player_2 )
				local dist = getDistanceBetweenPoints3D ( medico_X, medico_Y, medico_Z, vitima_X, vitima_Y, vitima_Z )
				if ( dist < 5 )  then
					if getElementData(source, "DNL:Curando") == false then
						if getElementData(Player_2, "DNL:Derrubado") == true then
							setPedAnimation( source, "MEDIC", "CPR", 4500, true, false, false, false)
							setElementData(source, "DNL:Curando", true)
							setTimer ( function()
								setElementHealth(Player_2, 100)
								setElementData(source, "DNL:Curando", false)
								outputChatBox ( "#00ff00✘ #ffffffINFO#00ff00✘➺ #ffffff The citizen has cured you #00ff00"..getPlayerName(source).."", Player_2, 255,255,255,true)
						
								givePlayerMoney(source, 4500)
								outputChatBox ( "#00ff00✘ #ffffffINFO#00ff00✘➺ #ffffff Citizen #00ff00 was cured and received an additional $4,500 #00ff00 "..getPlayerName(Player_2).."", source, 255,255,255,true)
							end, 4500, 1 )	
						else
							outputChatBox ( "#00ff00✘ #ffffffINFO#00ff00✘➺ #ffffff This citizen does not need treatment", source, 255,255,255,true)
						end
					else
						outputChatBox ( "#00ff00✘ #ffffffINFO#00ff00✘➺ #ffffff Are you already attending a citizen", source, 255,255,255,true)
					end
				else
					outputChatBox ( "#00ff00✘ #ffffffINFO#00ff00✘➺ #ffffff You need to get close to Citizen", source, 255,255,255,true)
				end
			else
				outputChatBox ( "#00ff00✘ #ffffffINFO #00ff00✘➺ #ffffff Only rescue members can treat citizens", source, 255,255,255,true)
			end
		else
			outputChatBox ( "#00ff00✘#ffffffINFO#00ff00✘➺ #ffffff Citizen Not Found", source, 255,255,255,true)
		end	
    else
		outputChatBox ( "#00ff00✘#ffffffINFO#00ff00✘➺ #ffffffUse /revv [#00ff00Nick#ffffff]", source, 255,255,255,true)
	end	
end
end
addCommandHandler("puka", Curar_Cidadao)

	                               --=============================--
                                   ----------- ANTI BUG ------------
                                   --=============================--
function Morrer ()
	if getElementData(source, "DNL:Derrubado") == true then		
		setElementData(source, "DNL:Derrubado", false)
		setPedAnimation(source, false)
		setElementFrozen(source, false )
		triggerClientEvent(source, "DNL:Fechar_HP_30", source)
		--destroyElement(myBlip)
	end
end
addEventHandler("onPlayerWasted", root, Morrer)


 ------------- IGNORA ------------
function getPlayerID(id)
    v = false
    for i, player in ipairs (getElementsByType("player")) do
        if getElementData(player, "ID") == id then
            v = player
            break
        end
    end
    return v
end


	function healwenna ( thePlayer )
		dutyLevel = 0
		 if  getElementHealth(thePlayer) > 35 then 

			--outputChatBox("ඩොපේ ඇඩ්මින් : ආ ක්නොක් වෙනකම් හිට්පන් බූතයා උබේ හෙල්ත් එක 35 අඩු උනාම හීල් කරන්න පුළුවං", thePlayer,127, 252, 3,true) 
		return
		end
	 	
	local foundkit, slot, itemValue = exports.global:hasItem(thePlayer, 70)
	
	for id, player in ipairs(getElementsByType("player")) do	
		local factionID = exports.factions:getCurrentFactionDuty(player) or 0
		if factionID == 2  then
			dutyLevel = dutyLevel+1
		 
		end				
	end

				local x1, y1, z1 = getElementPosition(thePlayer)
				local dist = getDistanceBetweenPoints3D(tx,ty,tz, x1, y1, z1)

				if dist < 1150 or  getDistanceBetweenPoints3D( x1, y1, z1,  -1047.58203125, 2060.8359375, 107.39594268799) < 800 then
				dutyLevel=0	
				 
				end		 


	--if dutyLevel==0 then
		if exports['item-system']:hasItem(thePlayer, 70) then
		 
			healmebug=1
			outputChatBox("ආහ්..  ආහ්. ම්ම්ම්හ්.. අවුච්. ආහ්.. මෙඩි පැක් එක ගහගන්න තියන අමාරුව ආව්...(විනාඩියක් යනවා ඇ.. හොද වෙන්න )", thePlayer,54, 247, 89,true) 
			 setTimer(
			 	function()
				 setPedAnimation( thePlayer, "BOMBER", "BOM_Plant", 4500, true, false, false, false)
				setElementHealth(thePlayer, 100)
			if itemValue > 1 then
				exports['item-system']:updateItemValue(thePlayer, slot, itemValue - 1)
			else
				exports.global:takeItem(thePlayer, 70, itemValue)
			end
				outputChatBox("මෙඩි පැක් එක ගහ ගත්තා ම්ම්හ්...හරි නේ අමාරුව දැන්... ", thePlayer)
				healmebug=0
				end, 60000, 1)
	 
	 	else
			outputChatBox("ඔබ ලග මෙඩි පැක් එකක් නොමැත.", thePlayer,0, 240, 108,true) 
		end
	
	--else
		--outputChatBox("දොස්තරලා ඉන්නවා කතා කරන්න.", thePlayer,0, 240, 108,true)
	--end	

	 end
	addEvent( "healwennaone", true )
	addEventHandler( "healwennaone", resourceRoot, healwenna )  
 



 




function healfriend(thePlayer, commandName, targetPartialNick)

    if isPedInVehicle(thePlayer) then 
	 outputChatBox("වහනෙන් බැහල ගහපිය", thePlayer)
	return
    end 


	local targetPlayer, targetPlayerName = exports.global:findPlayerByPartialNick(player, targetPartialNick)
	local thePlayerget, targetPlayerName = exports.global:findPlayerByPartialNick(player, thePlayer)
	local playerID = getElementData ( targetPlayer, "playerid" ) or 0 
	local thePlayerID = getElementData ( thePlayerget, "playerid" ) or 0 
	local playerHealth = getElementHealth ( thePlayer )
		
		if playerHealth < 34 then
		outputChatBox("ඇඩ්මින් : ඈ බොල සිගිත්තෝ තොට පණ නැතුව අරූට ප්‍රතිකාර කරන්න යන්නේ තොට ඩොප් ද?", thePlayer)
		return
		end

		if playerID==thePlayerID then
		outputChatBox("ඔයී හෙනම ප්‍රෝ නේ ඔයා... උබට ප්‍රතිකාර කරගන්න ඔන්නම් /healme ගහපන් පරයා....", thePlayer)
		return
		end
 

	dutyLevel = 0
	local x, y, z = getElementPosition(thePlayer)
	local tx, ty, tz = getElementPosition(targetPlayer)
	local foundkit, slot, itemValue = exports.global:hasItem(thePlayer, 70)
	
	-- for id, player in ipairs(getElementsByType("player")) do	
	-- 	local factionID = exports.factions:getCurrentFactionDuty(player) or 0
	-- 	if factionID == 2  then
	-- 		dutyLevel = dutyLevel+1
	-- 		-- outputChatBox("nagala "..dutyLevel)

	-- 	end				
	-- end
 				local x1, y1, z1 = getElementPosition(thePlayer)
				local dist = getDistanceBetweenPoints3D(-178.07421875, 2416.2685546875, 21.427238464355, x1, y1, z1)

				if dist < 1150 or  getDistanceBetweenPoints3D( x1, y1, z1,  -1047.58203125, 2060.8359375, 107.39594268799) < 800 then
				dutyLevel=0	
				 
				end
		
	-- if dutyLevel <= 2 then
		 

		if exports['item-system']:hasItem(thePlayer, 70) then
			if (getDistanceBetweenPoints3D(x, y, z, tx, ty, tz)>3) then
				outputChatBox("ඔයා එයා ලගට යන්න අනේ", thePlayer)
			else
				if itemValue > 1 then
					exports['item-system']:updateItemValue(thePlayer, slot, itemValue - 1)
				else
					exports.global:takeItem(thePlayer, 70, itemValue)
				end
			setPedAnimation( thePlayer, "MEDIC", "CPR", 4500, true, false, false, false)
			 setTimer(
			 	function()
				
				setElementHealth(targetPlayer, 100)
				
				outputChatBox("ඔයාව සුව කරා", targetPlayer)
					end, 5000, 1)

			end
		else
			outputChatBox("ඔබ ලග මෙඩි පැක් එකක් නොමැත.", thePlayer) 
		end
	-- else
	-- 	outputChatBox("දොස්තරලා ඉන්නවා කතා කරන්න.", thePlayer)
	-- end
end
addCommandHandler("hf", healfriend)
addCommandHandler("healfriend", healfriend)

----save 
--[[local db = dbConnect("sqlite", "health.db");






function test(thePlayer)
outputChatBox("asd")

                        
            local query = dbQuery(db, "SELECT * FROM kill")

            local result = dbPoll(query, -1)

            
            for i, row in ipairs(result) do       
                outputChatBox(row.user.." | "..row.stetus)
            end
          
dbExec(db, "INSERT INTO kill VALUES (?,?)", 1, 1)
        
end
addCommandHandler ( "hi", test )

function tets1(thePlayer)
	outputChatBox("asdasdasd")
	outputChatBox(getElementData (thePlayer,"Nock"))
end
addCommandHandler ( "hi1",tets1)





--local tempCol = createColCuboid (  -1718.6748046875, 1247.4814453125, 17.918369293213, 10.0, 10.0, 10.0 )

 

function playerquit(thePlayer)
 
    userID = getElementData(thePlayer, "dbid")
	stetus = getElementData (thePlayer,"Nock") or 0
	saveData(source,userID, stetus)
	outputChatBox(userID)
	outputChatBox(stetus)
	dbExec(db, "INSERT INTO kill VALUES (?,?)",1,1)
			
end
addEventHandler( "onPlayerQuit", getRootElement(),playerquit)
addCommandHandler ( "hi2",playerquit)

function saveData(source,userID, stetus)
	if userID then
		local query = dbQuery(db, "SELECT * FROM kill WHERE user = ? ",userID)
		local result = dbPoll(query, -1)
		if result and #result > 0 then
			local Query = dbQuery(db,"UPDATE kill SET stetus = ?  WHERE user = ?", tonumber(stetus),tonumber(userID))
		else
			local Query = dbExec(db, "INSERT INTO kill VALUES (?,?)",userID,stetus)
		end
	end
end]]



--new
 
--[[
local db = dbConnect("sqlite", "data.db");

function createDB()
    dbExec(db, "CREATE TABLE IF NOT EXISTS kill (userID TEXT, stetus INTEGER)")
end
addEventHandler("onResourceStart", resourceRoot, createDB)


function playerquit(thePlayer)
 
    userID = getElementData(source, "dbid")
	--setElementData (thePlayer,"Nock",0)
	stetus = getElementData (source,"Nock")
	saveData(source,userID, stetus)
	--outputChatBox(userID)
	--outputChatBox(stetus)
	--dbExec(db, "INSERT INTO kill VALUES (?,?)",1,1)
			
end
addCommandHandler ( "sda",playerquit)
addEventHandler( "onPlayerQuit", getRootElement(),playerquit)

function saveData(source,userID, stetus)
	if userID then
		local query = dbQuery(db, "SELECT * FROM kill WHERE userID = ? ",userID)
		local result = dbPoll(query, -1)
		if result and #result > 0 then
			local Query = dbQuery(db,"UPDATE kill SET stetus = ?  WHERE userID = ?", tonumber(stetus),tonumber(userID))
		else
			local Query = dbExec(db, "INSERT INTO kill VALUES (?,?)",userID,stetus)
		end
	end
end

function test(thePlayer)
--outputChatBox("asd")

                        
            local query = dbQuery(db, "SELECT * FROM kill")

            local result = dbPoll(query, -1)

            
            for i, row in ipairs(result) do       
                outputChatBox(row.userID.." | "..row.stetus)
            end
          

        
end
addCommandHandler ( "euknock", test )



function PlayerJoin(thePlayer) 
userID = getElementData(source, "dbid")
--outputChatBox("Load Data From User Id "..userID)
loadData(source,userID)
end
addEventHandler("accounts:characters:spawn", getRootElement(),PlayerJoin)
addCommandHandler( "pon", PlayerJoin)

function loadData(source,userID)
	if userID then
		local query = dbQuery(db,"SELECT * FROM kill WHERE userID = ? ",userID)
		local result = dbPoll(query, -1)
		if result and #result > 0 then
			local row = result[1]
			stetusd = row['stetus']
			--outputChatBox(row['stetus'])
			
			if stetus == 1 then
				--outputChatBox("uba abba gathayekne"..userID)
				triggerClientEvent(source, "es-system:acceptDeath:Client", source)
			end
			
		else		
			local Query = dbQuery(db, "INSERT INTO kill (userID,stetus) VALUES (?,?)",userID,0)

		end
	end
end
]]

function getMoney(thePlayer)
	--local money = exports.global:getMoney(thePlayer)
	exports.global:takeMoney(thePlayer, 2500)
	exports.global:giveMoney(exports.factions:getFactionFromID(2), tonumber(2500))
end	 
addEvent( "euknock:getmoney", true )
addEventHandler( "euknock:getmoney", root, getMoney) 

function quitPlayer ( thePlayer )

    local userID = getElementData(source, "dbid")
    local stetus = getElementData (source,"Nock")
    if userID then
        dbQuery(exports.mysql:getConn("mta"), "UPDATE `characters` SET `knock`=" .. stetus .. " WHERE `id` = " .. userID .. " LIMIT 1")
    end

end
addEventHandler ( "onPlayerQuit", getRootElement(), quitPlayer )


function chat(thePlayer) 
outputChatBox(getElementData(thePlayer, "Nock"))

end
addCommandHandler( "pon", chat)

function id(thePlayer)
	executeCommandHandler ( "sessybananemwa", thePlayer)
end
addCommandHandler("sexyhealknock", id)
addCommandHandler("malith1", id)
