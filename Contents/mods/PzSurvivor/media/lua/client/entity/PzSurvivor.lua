PzSurvivor = {}
PzSurvivor.__index = PzSurvivor

function PzSurvivor:new(isFemale,square)

    local o = {}
    setmetatable(o, self)
    self.__index = self

    o.DebugMode = false
    o.NumberOfBuildingsLooted = 0
    o.AttackRange = 0.5
    o.UsingFullAuto = false
    o.GroupBraveryBonus = 0
    o.GroupBraveryUpdatedTicks = 0
    o.WaitTicks = 0
    o.TriggerHeldDown = false
    --o.player = o:spawnPlayer(square, isFemale)
    --o.userName = TextDrawObject.new()
    --o.userName:setAllowAnyImage(true);
    --o.userName:setDefaultFont(UIFont.Small);
    --o.userName:setDefaultColors(255, 255, 255, 255);
    --o.userName:ReadString(o.player:getForname())

    o.AmmoTypes = {}
    o.AmmoBoxTypes = {}
    o.LastGunUsed = nil
    o.LastMeleUsed = nil
    o.roundChambered = nil
    o.TicksSinceSpoke = 0
    o.JustSpoke = false
    o.SayLine1 = ""

    o.LastSurvivorSeen = nil
    o.LastMemberSeen = nil
    o.TicksAtLastDetectNoFood = 0
    o.NoFoodNear = false
    o.GroupRole = ""
    o.seenCount = 0
    o.dangerSeenCount = 0
    o.MyTaskManager = TaskManager:new(o)
    o.LastEnemeySeen = false
    o.Reducer = ZombRand(1,100)
    o.Container = false
    o.Room = false
    o.Building = false
    o.WalkingPermitted = true
    o.TargetBuilding = nil
    o.TargetSquare = nil
    o.Tree = false
    o.LastSquare = nil
    o.TicksSinceSquareChanged = 0
    o.EnemiesOnMe = 0
    o.BaseBuilding = nil
    o.BravePoints = 0
    o.Shirt = nil
    o.Pants = nil
    o.WasOnScreen = false

    o.PathingCounter = 0
    o.GoFindThisCounter = 0
    o.SpokeToRecently = {}
    o.SquareWalkToAttempts = {}
    o.SquaresExplored = {}
    o.SquareContainerSquareLooteds = {}
    for i=1, #LootTypes do o.SquareContainerSquareLooteds[LootTypes[i]] = {} end

    --o:setBravePoints(SuperSurvivorBravery)

    local result = ZombRand(6)
    local Dress = "RandomBasic"


    --if(o.player:getPerkLevel(Perks.FromString("Aiming")) >= 5) then
        --local innerresult = ZombRand(3)
        --if(innerresult == 1) then
            --Dress = "ArmyCamo"
            --o:giveWeapon("Base.AssaultRifle")
        --elseif(innerresult == 2) then
            --Dress = "Army"
            --o:giveWeapon("Base.AssaultRifle")
        --else
            --Dress = "Police"
            --o:giveWeapon("Base.Pistol3")
        --end
    --elseif(o.player:getPerkLevel(Perks.FromString("Doctor")) >= 3) then
        --Dress = "Doctor"
    --end

    --o:SuitUp(Dress)

    return o
end

--Spawn нового выжившего:
function PzSurvivor:spawnPlayer(square, isFemale)end