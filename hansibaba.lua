 

function healmeane ( commandName )
	outputChatBox( " ආහ්.. මෙඩිය ගහගන්න තියන අමාරුව... රිදෙනවා ඌයි... ",247, 10, 10)
  	if not (babame) then
		babame = true
		timereka = setTimer(hellobaby, 30000, 1)
	 else
		outputChatBox( "චාරු අක්කා :  එක පාරක් ගැහුවා නේ ආයෙත් ගහන්නෙ මොන මගුලටද?. හිට්පන් විනාඩියක්",247, 10, 10)	
	end

end
--addCommandHandler ( "healme", healmeane )
--addCommandHandler ( "hm", healmeane )


function hellobaby()
	babame = false
	triggerServerEvent ( "healwennaone", resourceRoot, localPlayer )
end


 
