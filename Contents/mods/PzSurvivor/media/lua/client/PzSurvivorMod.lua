-------------------------------------------------InGameThreadLink:

--OnGameStart
function PzSurvivorsEventOnGameStart()end
Events.OnGameStart.Add(PzSurvivorsEventOnGameStart);

--EventEventOnTick
function PzSurvivorsEventOnTick()end
Events.OnRenderTick.Add(PzSurvivorsEventOnTick);

--LoadGridsquare
function PzSurvivorsEventLoadGridsquare()end
Events.LoadGridsquare.Add(PzSurvivorsEventLoadGridsquare);

--OnLoad
function PzSurvivorsEventOnLoad() end
--Events.OnLoad.Add(PzSurvivorsEventOnLoad);

--OnCharacterCollide
function PzSurvivorsEventOnCharacterCollide()end
--Events.OnCharacterCollide.Add(PzSurvivorsEventOnCharacterCollide);

--OnWeaponSwing
function PzSurvivorsEventOnWeaponSwing() end
Events.OnWeaponSwing.Add(PzSurvivorsEventOnWeaponSwing);

--OnKeyPressed
function PzSurvivorsEventOnKeyPressed()end
Events.OnKeyPressed.Add(PzSurvivorsEventOnKeyPressed);

--OnEquipPrimary
function PzSurvivorsEventOnEquipPrimary(player,weapon)end
Events.OnEquipPrimary.Add(PzSurvivorsEventOnEquipPrimary);

--EveryTenMinutes
function SuperSurvivorsRaiderManager() end
Events.EveryTenMinutes.Add(SuperSurvivorsRaiderManager);

--OnCreatePlayer
function PzSurvivorsEventCreatePlayer(newplayerID) end
Events.OnCreatePlayer.Add(PzSurvivorsEventCreatePlayer);

