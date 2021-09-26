function pzSurvivorsContextMenu(player, context, worldobjects, test)

	local SurvivorOptions = context:addOption("PzSurvivor", worldobjects, nil);
	local submenu = context:getNew(context);
	
	local RulesOfEngagementOption = submenu:addOption("Debug(SpawnSoldier)", worldobjects, nil);
	local subsubmenu = submenu:getNew(submenu);

	--Иерархия меню:
	
	context:addSubMenu(SurvivorOptions, submenu);
end

Events.OnFillWorldObjectContextMenu.Add(pzSurvivorsContextMenu);