local screenW,screenH = guiGetScreenSize()
local resW,resH = 1366,768
local x,y =  (screenW/resW), (screenH/resH)

local dxfont0_FONTE = dxCreateFont("font/FONTE.ttf", 13)
Tempo_Pro = {}


	                               --=============================--
                                   -------- INTERFACE PAINEL -------
                                   --=============================--
function Alerta_Cura_1 ()
 

        dxDrawText("!!!!", (screenW * 0.3690) - 1, (screenH * 0.9466) - 1, (screenW * 0.6523) - 1, (screenH * 0.9870) - 1, tocolor(0, 0, 0, 255), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
        dxDrawText("!!!!", (screenW * 0.3690) + 1, (screenH * 0.9466) - 1, (screenW * 0.6523) + 1, (screenH * 0.9870) - 1, tocolor(0, 0, 0, 255), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
        dxDrawText("!!!!", (screenW * 0.3690) - 1, (screenH * 0.9466) + 1, (screenW * 0.6523) - 1, (screenH * 0.9870) + 1, tocolor(0, 0, 0, 255), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
        dxDrawText("!!!!", (screenW * 0.3690) + 1, (screenH * 0.9466) + 1, (screenW * 0.6523) + 1, (screenH * 0.9870) + 1, tocolor(0, 0, 0, 255), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
        dxDrawText("!!!!", screenW * 0.3690, screenH * 0.9466, screenW * 0.6523, screenH * 0.9870, tocolor(255, 255, 255, 255), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
        dxDrawText(""..getTimeLeft(Timer_DX[localPlayer]).."", (screenW * 0.4158) - 1, (screenH * 0.9466) - 1, (screenW * 0.6991) - 1, (screenH * 0.9870) - 1, tocolor(0, 0, 0, 255), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
        dxDrawText(""..getTimeLeft(Timer_DX[localPlayer]).."", (screenW * 0.4158) + 1, (screenH * 0.9466) - 1, (screenW * 0.6991) + 1, (screenH * 0.9870) - 1, tocolor(0, 0, 0, 255), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
        dxDrawText(""..getTimeLeft(Timer_DX[localPlayer]).."", (screenW * 0.4158) - 1, (screenH * 0.9466) + 1, (screenW * 0.6991) - 1, (screenH * 0.9870) + 1, tocolor(0, 0, 0, 255), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
        dxDrawText(""..getTimeLeft(Timer_DX[localPlayer]).."", (screenW * 0.4158) + 1, (screenH * 0.9466) + 1, (screenW * 0.6991) + 1, (screenH * 0.9870) + 1, tocolor(0, 0, 0, 255), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
        dxDrawText(""..getTimeLeft(Timer_DX[localPlayer]).."", screenW * 0.4158, screenH * 0.9466, screenW * 0.6991, screenH * 0.9870, tocolor(254, 1, 1, 254), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
        dxDrawText("දොස්තර ඔන්නම් /md ගහන්න හිටියොත්  එයි  ", (screenW * 0.4466) - 1, (screenH * 0.9466) - 1, (screenW * 0.7299) - 1, (screenH * 0.9870) - 1, tocolor(0, 0, 0, 255), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
        dxDrawText("දොස්තර ඔන්නම් /md ගහන්න හිටියොත්  එයි ", (screenW * 0.4466) + 1, (screenH * 0.9466) - 1, (screenW * 0.7299) + 1, (screenH * 0.9870) - 1, tocolor(0, 0, 0, 255), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
        dxDrawText("", (screenW * 0.4466) - 1, (screenH * 0.9466) + 1, (screenW * 0.7299) - 1, (screenH * 0.9870) + 1, tocolor(0, 0, 0, 255), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
        dxDrawText("දොස්තර ඔන්නම් /md ගහන්න හිටියොත්  එයි ", (screenW * 0.4466) + 1, (screenH * 0.9466) + 1, (screenW * 0.7299) + 1, (screenH * 0.9870) + 1, tocolor(0, 0, 0, 255), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
        dxDrawText("දොස්තර ඔන්නම් /md ගහන්න හිටියොත්  එයි ", screenW * 0.4466, screenH * 0.9466, screenW * 0.7299, screenH * 0.9870, tocolor(255, 255, 255, 255), 1.00, dxfont0_FONTE, "left", "top", false, false, false, false, false)
    end
								   
	                               --=============================--
                                   ---------- ABRIR/FECHAR ---------
                                   --=============================--
Timer_DX = {}

function HP_30 ()
	if isEventHandlerAdded("onClientRender", getRootElement(), Alerta_Cura_1) then return end
		addEventHandler("onClientRender", root, Alerta_Cura_1)
		checkped1(localPlayer)
	Timer_DX[localPlayer] = setTimer(function()
		Fechar_HP_30 ()
	end, 480000, 1)
	showCursor(false) 
end
addEvent("DNL:HP_30", true)
addEventHandler("DNL:HP_30", root, HP_30)



function Fechar_HP_30 ()
	if isEventHandlerAdded("onClientRender", getRootElement(), Alerta_Cura_1) then 
		if isTimer(Timer_DX[localPlayer]) then killTimer(Timer_DX[localPlayer]) end
		removeEventHandler("onClientRender", root, Alerta_Cura_1)
	end
end
addEvent("DNL:Fechar_HP_30", true)
addEventHandler("DNL:Fechar_HP_30", root, Fechar_HP_30)

	                               --=============================--
                                   ---------- ALERTA CURA ----------
                                   --=============================--
function Alerta_Cura ()
    for _, player in ipairs(getElementsByType('player')) do
        if isElementOnScreen(player) and getElementData(player, "DNL:Derrubado") == true then
            local x, y, z = getElementPosition(player)
            local cx, cy, cz = getCameraMatrix()
            local vx, vy, vz = getPedBonePosition(player, 8)

            local dist = getDistanceBetweenPoints3D(cx, cy, cz, vx, vy, vz)
 		

            if (dist < 30 or player == target) then
                if(isLineOfSightClear(cx, cy, cz, vx, vy, vz, true, false, false)) then
                    local x, y = getScreenFromWorldPosition (vx, vy, vz + 0.6)
                    if(x and y) then
                    end
                end
            end
        end
    end
end
addEventHandler("onClientRender", root, Alerta_Cura)

	                               --=============================--
                                   ------------- IGNORA ------------
                                   --=============================--
--==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-
								   
function getTimeLeft(timer)
  if isTimer(timer) then
    local ms = getTimerDetails(timer)
    local m = math.floor(ms/60000)
    local s = math.floor((ms-m*60000)/1000)
    if m < 10 then m = "0"..m end
    if s < 10 then s = "0"..s end
    return m..":"..s
 end
end

--==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-
 
Block_Tec = { "arrow_l", "arrow_u",
 "arrow_r", "arrow_d", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k",
 "l",  "n", "o", "q", "r", "s","m", "u", "v", "w", "x", "y", "num_0", "num_1", "num_2", "num_3", "num_4", "num_5",
 "num_6", "num_7", "num_8", "num_9", "num_mul", "num_add", "num_sep", "num_sub", "num_div", "num_dec", "num_enter", "F2", "F3", "F4", "F5",
 "F7", "F8", "F9", "F6", "F12", "escape", "backspace", "lalt", "ralt", "enter", "space", "pgup", "pgdn", "end", "home",
 "insert", "delete", "lshift", "rshift", "lctrl", "rctrl", "[", "]", "pause", "capslock", "scroll", ";", ",", "-", ".", "/", "#", "\\", "=" }

--==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-

addEventHandler("onClientKey", root, 
    function(button, press)
        for index, keys in pairs(Block_Tec) do
			if isEventHandlerAdded("onClientRender", getRootElement(), Alerta_Cura_1) then
				
                if button == keys then
                    cancelEvent()
                end
            end
        end
    end
)	

--==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-
						  
function isEventHandlerAdded( sEventName, pElementAttachedTo, func )
	if type( sEventName ) == 'string' and isElement( pElementAttachedTo ) and type( func ) == 'function' then
		local aAttachedFunctions = getEventHandlers( sEventName, pElementAttachedTo )
		if type( aAttachedFunctions ) == 'table' and #aAttachedFunctions > 0 then
			for i, v in ipairs( aAttachedFunctions ) do
				if v == func then
					return true
				end
			end
		end
	end
	return false
end

--==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-

local x,y = guiGetScreenSize()
function isCursorOnElement(x, y, w, h)
	if (not isCursorShowing()) then
		return false
	end
	local mx, my = getCursorPosition()
	local fullx, fully = guiGetScreenSize()
	cursorx, cursory = mx*fullx, my*fully
	if cursorx > x and cursorx < x + w and cursory > y and cursory < y + h then
		return true
	else
		return false
	end
end

--==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-

function stopMinigunDamage(attacker, weapon, bodypart)
	local playerHealth = getElementHealth ( localPlayer )
	if playerHealth < 5 then
		--outputChatBox("aaaaaaa")
		cancelEvent() 
	else
		
	end
	if (bodypart == 9) then --if the weapon used was the minigun
		cancelEvent() --cancel the event
	end
end
addEventHandler("onClientPlayerDamage", localPlayer, stopMinigunDamage) 



local count = 0
local state = 0
local mgTimer = nil
local escapeTimer = nil
local pFish = nil

local fishermanJohn = createPed( 70, 8.0390625, -3.369140625, 40.4296875 )
setPedRotation(fishermanJohn, 266)
setElementDimension(fishermanJohn, 521)
setElementInterior(fishermanJohn , 24)
setElementData(fishermanJohn, "nametag", true)
setElementData(fishermanJohn, "name", "HORA DOKA")
setElementFrozen(fishermanJohn, true)



function fishermanJohnRightClick(button, state, absX, absY, wx, wy, wz, element)
    if (element) and (getElementType(element)=="ped") and (button=="right") and (state=="down") then
		local pedName = getElementData(element, "name") or "The Storekeeper"
		pedName = tostring(pedName):gsub("_", " ")

        local rcMenu
        if(pedName == "HORA DOKA") then 
            rcMenu = exports.rightclick:create(pedName)
            local row = exports.rightclick:addRow("Talk")
            addEventHandler("onClientGUIClick", row,  function (button, state)
				reset(localPlayer)
				triggerServerEvent("euknock:getmoney", localPlayer, localPlayer)
				outputChatBox("ඔයාව සුව උනා සුද්දා", thePlayer)
				dami = 0
            end, false)

            local row2 = exports.rightclick:addRow("Close")
            addEventHandler("onClientGUIClick", row2,  function (button, state)
			triggerServerEvent("meat:hideinv", localPlayer, localPlayer)
                exports.rightclick:destroy(rcMenu)
            end, false)
        end
    end
end
addEventHandler("onClientClick", root, fishermanJohnRightClick)


local fishermanJohn1 = createPed( 70, 7.9482421875, -4.0830078125, 40.4296875 )
setPedRotation(fishermanJohn1, 266)
setElementDimension(fishermanJohn1, 523)
setElementInterior(fishermanJohn1 , 24)
setElementData(fishermanJohn1, "nametag", true)
setElementData(fishermanJohn1, "name", "HORA DOKA")
setElementFrozen(fishermanJohn1, true)



function fishermanJohn1RightClick(button, state, absX, absY, wx, wy, wz, element)
    if (element) and (getElementType(element)=="ped") and (button=="right") and (state=="down") then
		local pedName = getElementData(element, "name") or "The Storekeeper"
		pedName = tostring(pedName):gsub("_", " ")

        local rcMenu
        if(pedName == "HORA DOKA") then 
            rcMenu = exports.rightclick:create(pedName)
            local row = exports.rightclick:addRow("Talk")
            addEventHandler("onClientGUIClick", row,  function (button, state)
				reset(localPlayer)
				triggerServerEvent("euknock:getmoney", localPlayer, localPlayer)
				outputChatBox("ඔයාව සුව උනා සුද්දා", thePlayer)
				dami = 0
            end, false)

            local row2 = exports.rightclick:addRow("Close")
            addEventHandler("onClientGUIClick", row2,  function (button, state)
			triggerServerEvent("meat:hideinv", localPlayer, localPlayer)
                exports.rightclick:destroy(rcMenu)
            end, false)
        end
    end
end
addEventHandler("onClientClick", root, fishermanJohn1RightClick)


local fishermanJohn2 = createPed( 70, 8.1298828125, -4.3251953125, 40.4296875 )
setPedRotation(fishermanJohn2, 270)
setElementDimension(fishermanJohn2, 527)
setElementInterior(fishermanJohn2 , 24)
setElementData(fishermanJohn2, "nametag", true)
setElementData(fishermanJohn2, "name", "HORA DOKA")
setElementFrozen(fishermanJohn2, true)



function fishermanJohn2RightClick(button, state, absX, absY, wx, wy, wz, element)
    if (element) and (getElementType(element)=="ped") and (button=="right") and (state=="down") then
		local pedName = getElementData(element, "name") or "The Storekeeper"
		pedName = tostring(pedName):gsub("_", " ")

        local rcMenu
        if(pedName == "HORA DOKA") then 
            rcMenu = exports.rightclick:create(pedName)
            local row = exports.rightclick:addRow("Talk")
            addEventHandler("onClientGUIClick", row,  function (button, state)
				reset(localPlayer)
				triggerServerEvent("euknock:getmoney", localPlayer, localPlayer)
				outputChatBox("ඔයාව සුව උනා සුද්දා", thePlayer)
				dami = 0
            end, false)

            local row2 = exports.rightclick:addRow("Close")
            addEventHandler("onClientGUIClick", row2,  function (button, state)
			triggerServerEvent("meat:hideinv", localPlayer, localPlayer)
                exports.rightclick:destroy(rcMenu)
            end, false)
        end
    end
end
addEventHandler("onClientClick", root, fishermanJohn2RightClick)


local fishermanJohn3 = createPed( 70, 1526.189453125, -1635.146484375, 6.21875 )
setPedRotation(fishermanJohn3, 240)
setElementData(fishermanJohn3, "nametag", true)
setElementData(fishermanJohn3, "name", "HORA DOKA")
setElementFrozen(fishermanJohn3, true)



function fishermanJohn3RightClick(button, state, absX, absY, wx, wy, wz, element)
    if (element) and (getElementType(element)=="ped") and (button=="right") and (state=="down") then
		local pedName = getElementData(element, "name") or "The Storekeeper"
		pedName = tostring(pedName):gsub("_", " ")

        local rcMenu
        if(pedName == "HORA DOKA") then 
            rcMenu = exports.rightclick:create(pedName)
            local row = exports.rightclick:addRow("Talk")
            addEventHandler("onClientGUIClick", row,  function (button, state)
				reset(localPlayer)
				triggerServerEvent("euknock:getmoney", localPlayer, localPlayer)
				outputChatBox("ඔයාව සුව උනා සුද්දා", thePlayer)
				dami = 0
            end, false)

            local row2 = exports.rightclick:addRow("Close")
            addEventHandler("onClientGUIClick", row2,  function (button, state)
			triggerServerEvent("meat:hideinv", localPlayer, localPlayer)
                exports.rightclick:destroy(rcMenu)
            end, false)
        end
    end
end
addEventHandler("onClientClick", root, fishermanJohn3RightClick)



local fishermanJohn4 = createPed( 70, -1620, 649.0263671875, -5.2421875 )
setPedRotation(fishermanJohn4, 240)
setElementData(fishermanJohn4, "nametag", true)
setElementData(fishermanJohn4, "name", "HORA DOKA")
setElementFrozen(fishermanJohn4, true)



function fishermanJohn4RightClick(button, state, absX, absY, wx, wy, wz, element)
    if (element) and (getElementType(element)=="ped") and (button=="right") and (state=="down") then
		local pedName = getElementData(element, "name") or "The Storekeeper"
		pedName = tostring(pedName):gsub("_", " ")

        local rcMenu
        if(pedName == "HORA DOKA") then 
            rcMenu = exports.rightclick:create(pedName)
            local row = exports.rightclick:addRow("Talk")
            addEventHandler("onClientGUIClick", row,  function (button, state)
				reset(localPlayer)
				triggerServerEvent("euknock:getmoney", localPlayer, localPlayer)
				outputChatBox("ඔයාව සුව උනා සුද්දා", thePlayer)
				dami = 0
            end, false)

            local row2 = exports.rightclick:addRow("Close")
            addEventHandler("onClientGUIClick", row2,  function (button, state)
			triggerServerEvent("meat:hideinv", localPlayer, localPlayer)
                exports.rightclick:destroy(rcMenu)
            end, false)
        end
    end
end
addEventHandler("onClientClick", root, fishermanJohn4RightClick)

function checkped1(thePlayer)

dami = 1
--outputChatBox("qwe")
setElementData(localPlayer, "Nock",1)
toggleControl("action", false)
toggleControl("next_weapon", false)
toggleControl("previous_weapon", false)
toggleControl("aim_weapon", false)
toggleControl("fire", false)
toggleControl("jump", false)
toggleControl("sprint", false)
toggleControl("crouch", false)
toggleControl("action", false)
toggleControl("zoom_in", false)
toggleControl("zoom_out", false)

end
addEvent("es-system:acceptDeath:Client", true)
addEventHandler("es-system:acceptDeath:Client", root,checkped1)




function reset(thePlayer)
dami = 0
setElementData(localPlayer, "Nock",0)

toggleControl("action", true)
toggleControl("next_weapon", true)
toggleControl("previous_weapon", true)
toggleControl("aim_weapon", true)
toggleControl("fire", true)
toggleControl("jump", true)
toggleControl("sprint", true)
toggleControl("crouch", true)
toggleControl("action", true)
toggleControl("zoom_in", true)
toggleControl("zoom_out", true)

end
addEvent("es-system:acceptDeath:Client2", true)
addEventHandler("es-system:acceptDeath:Client2", root,reset)
addCommandHandler("sexyhealknock", reset ) 

keyTable = {"mouse_wheel_up", "mouse_wheel_down", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "b", "c","e", "h", "i",
 "l","n","o","q", "r", "u", "v", "x", "y", "num_0", "num_1", "num_2", "num_3", "num_4", "num_5", 
 "num_6", "num_7", "num_8", "num_9", "num_mul", "num_add", "num_sep", "num_sub", "num_div", "num_dec", "num_enter", "F1", "F2", "F3", "F4", "F5",
 "F6", "F7", "F8", "F9", "F10", "F11", "F12", "escape", "backspace", "tab", "lalt", "ralt", "enter","pgup", "pgdn", "end", "home",
 "insert", "delete", "lshift", "rshift", "lctrl", "rctrl", "[", "]", "pause", "capslock", "scroll", ";", ",", "-", ".", "/", "#", "\\", "="}
 

addEventHandler("onClientKey", root, 
    function(button, press)
		if dami == 1 then 
			for index, keys in pairs(keyTable) do
				if button == keys then
					cancelEvent()
				end
			end
		end
    end
)	

function checkped2(thePlayer)

--outputChatBox("nock1")


	--outputChatBox("nock2")
	dami = 1
	--outputChatBox("qwe")
	setElementData(localPlayer, "Nock",1)
	toggleControl("action", false)
	toggleControl("next_weapon", false)
	toggleControl("previous_weapon", false)
	toggleControl("aim_weapon", false)
	toggleControl("fire", false)
	toggleControl("jump", false)
	toggleControl("sprint", false)
	toggleControl("crouch", false)
	toggleControl("action", false)
	toggleControl("zoom_in", false)
	toggleControl("zoom_out", false)


end
addEvent("kolla:knock", true)
addEventHandler("kolla:knock", root,checkped2)

