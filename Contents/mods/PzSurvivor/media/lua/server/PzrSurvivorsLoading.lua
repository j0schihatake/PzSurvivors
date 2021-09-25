require "Items/SuburbsDistributions"

if(not PzSurvivors) then PzSurvivors = {} end

PzSurvivors.isModEnabled = function(modname)
	local actmods = getActivatedMods();
	for i=0, actmods:size()-1, 1 do
		if actmods:get(i) == modname then
			return true;
		end
	end
	return false;
end

PzSurvivors.getTexture = function()
	print("Survivor Mod Texture Loaded");
end

Events.OnGameBoot.Add(PzSurvivors.getSprites);