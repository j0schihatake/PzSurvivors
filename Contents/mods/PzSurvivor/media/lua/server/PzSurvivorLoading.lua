require "Items/SuburbsDistributions"

if(not PzSurvivor) then PzSurvivor = {} end

PzSurvivor.isModEnabled = function(modname)
	local actmods = getActivatedMods();
	for i=0, actmods:size()-1, 1 do
		if actmods:get(i) == modname then
			return true;
		end
	end
	return false;
end

PzSurvivor.getTexture = function()
	print("PzSurvivor Mod Texture Loaded");
end

Events.OnGameBoot.Add(PzSurvivor.getSprites);