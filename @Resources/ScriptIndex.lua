function Initialize()
	Var1 = SKIN:GetMeasure('MeaFV2')
	VarA = SKIN:GetVariable('H2')
end

function Update()
	Var2 = Var1:GetValue()
	if Var2 < 10 then
		SKIN:Bang('[!HideMeterGroup "Index"]')
	else
		Var = (VarA-138)/(Var2-8)
		if Var < 2 then
			Var = 2
		end
		SKIN:Bang('[!ShowMeterGroup "Index"][!SetOption "MeIndexBar" "H" "' .. Var .. '"]')
	end
end
