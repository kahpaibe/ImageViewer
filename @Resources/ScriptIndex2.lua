function Initialize()
	FC1 = SKIN:GetMeasure('MeaFV2')
	H2 = SKIN:GetVariable('H2')
	Index = SKIN:GetMeasure('MeaIndex')
end

function Update()
	FC2 = FC1:GetValue()
	Index2 = Index:GetValue()
	T1 = SKIN:GetVariable('Test1')
	if T1 == "1" then
		MY1 = SKIN:GetVariable('TestMouseY1')
		MY1 = MY1
		I4 = Index:GetValue()
		Index3 = math.ceil(MY1/(H2-138)*(FC2-8))
		if Index3 > I4 then
			N1=0
			repeat
				SKIN:Bang('[!CommandMeasure "MeaFV2" "IndexDown"]')
				Index3 = Index3-1
				N1=N1+1
			until Index3 == I4
				Index3 = Index3+N1
			SKIN:Bang('[!SetOption "MeaIndex" "Formula" "'..Index3..'"]')
		else
			N1=0
			repeat
				SKIN:Bang('[!CommandMeasure "MeaFV2" "IndexUp"]')
				Index3 = Index3+1
				N1=N1+1
			until Index3 == I4
				Index3 = Index3-N1
			SKIN:Bang('[!SetOption "MeaIndex" "Formula" "'..Index3..'"]')
		end
		Index2 = Index3
		SKIN:Bang('[!SetVariable "Test1" "0"]')
		Var2 = math.ceil(89+(Index3*(H2-138)/(FC2-8))-(H2-138)/(FC2-8))
		SKIN:Bang('[!SetOption "MeIndexBar" "Y" "' .. Var2 .. '"]')
	else
		Var = math.ceil(89+(Index2*(H2-138)/(FC2-8))-(H2-138)/(FC2-8))
		SKIN:Bang('[!SetOption "MeIndexBar" "Y" "' .. Var .. '"]')
	end
end