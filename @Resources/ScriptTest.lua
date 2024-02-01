function Initialize()
	VarC = 1
	Var1 = SKIN:GetMeasure('MeaFVCFT')
	Var3 = SKIN:GetMeasure('MeaFVCP')
	Var10 = SKIN:GetMeasure('MeaSCTest2')
	VarA = SKIN:GetMeasure('MeaFV')
end

function Update()
	VarC = VarC + 1
	if VarC > 2 then
		Var11 = Var10:GetValue()
		if Var11 > 0 then
			Var2 = Var1:GetStringValue()
			VarB = VarA:GetValue()
			if string.lower(Var2) == 'png' or string.lower(Var2) == 'jpg' or string.lower(Var2) == 'bmp' or string.lower(Var2) == 'gif' or string.lower(Var2) == 'tif' or string.lower(Var2) == 'ico' then
				Var3 = SKIN:GetMeasure('MeaFVCP')
				Var4 = Var3:GetStringValue()
				SKIN:Bang('[!SetOption "MeImg" "ImageName" "' .. Var4 .. '"][!ShowMeter "MeFileCount"][!SetOption "MeaSCTest2" "Formula" "0"][!SetOption "MeText" "Text" ""]')
			elseif VarB == 0 then
				SKIN:Bang('[!SetOption "MeImg" "ImageName" "#@#Dummy.png"][!HideMeter "MeFileCount"][!SetOption "MeText" "Text" "There are no files."][!SetOption "MeaSCTest2" "Formula" "0"]')
			else
				Var4 = Var3:GetStringValue()
				SKIN:Bang('[!SetOption "MeImg" "ImageName" "#@#Dummy.png"][!ShowMeter "MeFileCount"][!SetOption "MeText" "Text" "Not Supported format."][!SetOption "MeaSCTest2" "Formula" "0"]')
			end
		end
	end
end
