-- UNITDEF -- ECOMMANDFACTORY --
--------------------------------------------------------------------------------

local unitName = "ecommandfactory"

--------------------------------------------------------------------------------

local unitDef = {

  activatewhenbuilt  = false,
  buildAngle         = 1024,
  buildCostEnergy    = 0,
  buildCostMetal     = 0,
  builder            = true,
  buildTime          = 0,
  canBeAssisted      = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "NOTAIR",
  corpse             = "ammobox",
  description        = "Produces Units",
  energyStorage      = 0,
  energyUse          = 0,
  energyMake         = 0,
  explodeAs          = "MEXPOP2",
  footprintX         = 20,
  footprintZ         = 20,
  iconType           = "factory",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  levelground		 = false,
  maxDamage          = 5000,
  maxSlope           = 25,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  metalMake          = 0,
  name               = "Commanding Factory",
  objectName         = "ebasefactory.s3o",
  radarDistance      = 0,
  selfDestructAs     = "LARGE_BUILDING",
  showNanoSpray      = "0",
  side               = "CORE",
  sightDistance      = 388,
  smoothAnim         = true,
  TEDClass           = "PLANT",
  unitname           = "ecommandfactory",
  workerTime         = 2,
  yardMap            = "oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo oooooooocccccccooooo",
  usePieceCollisionVolumes = true,
  useBuildingGroundDecal = true,
  BuildingGroundDecalType = "hoverfactdecal.png",
  BuildingGroundDecalSizeX = 22,
  BuildingGroundDecalSizeY = 22,
  BuildingGroundDecalDecaySpeed = 0.9,
  sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:nanoflame",
    },
  },
  buildoptions = {
    "eengineer5", --new
    "eorb",
    "elighttank3", --new
    "eflametank", --new
    "eriottank2", --new
    "emediumtank3", --new
    "eheavytank3", --new
    "efatso2", --new
    "eaatank",
    "emissiletank", --new
    "eartytank", --new
    "ebomb",

  },
  sounds = {
    underattack        = "unitsunderattack1",
    select = {
      "gdfactoryselect",
    },
  },
  weapons = {
    [1]  = {
      def                = "fusionfx",
    },
    [2]  = {
      def                = "fusionfx2",
    },
    [3]  = {
      def                = "fusionfx3",
    },
  },
  customParams = {
	armortype   = "building", 
  },
	buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=22,
	buildingGroundDecalSizeY=22,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[ecommandfactory_aoplane.dds]],
}


--------------------------------------------------------------------------------

local weaponDefs = {
  fusionfx = {

    areaOfEffect       = 5,
    avoidFeature       = false,
    avoidFriendly      = false,
    beamTime           = 0.1,
    beamWeapon         = true,
    collideFeature     = false,
    collideFriendly    = false,
    color              = 255,
    color2             = 226,
    coreThickness      = 0.1,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = "custom:burn",
    fallOffRate        = 0.5,
    minintensity       = 1,
    impulseFactor      = 0,
    largeBeamLaser     = true,
    lineOfSight        = true,
    name               = "Light Laser",
    noSelfDamage       = true,
    range              = 650,
    reloadtime         = 0.1,
    WeaponType         = "BeamLaser",
    selfprop           = true,
    soundTrigger       = true,
    startVelocity      = 1500,
    targetMoveError    = 0.3,
    thickness          = 1,
    turret             = true,
    weaponVelocity     = 1500,
    damage = {
      default            = 0,
    },
  },
    fusionfx2 = {
    areaOfEffect       = 8,
    avoidFeature       = false,
    avoidFriendly      = false,
    beamTime           = 0.1,
    beamWeapon         = true,
    collideFeature     = false,
    collideFriendly    = false,
    coreThickness      = 0.5,
    duration           = 0.9,
    energypershot      = 0,
    explosionGenerator = "custom:burn",
    fallOffRate        = 0.5,
    fireStarter        = 50,
    
    largeBeamLaser     = true,
    lineOfSight        = true,
    name               = "Laser",
    range              = 500,
    reloadtime         = 1,
    WeaponType         = "LaserCannon",
    rgbColor           = "0.5 0 0",
    rgbColor2          = "0.2 0.2 0.2",
    soundTrigger       = true,
    sweep              = "1",
    sweepfire          = true,
    targetMoveError    = 0.3,
    texture1           = "plasmaball",
    texture2           = "empty",
    thickness          = 2,
    tolerance          = 1000,
    turret             = true,
    weaponVelocity     = 300,
    damage = {
      default            = 0,
    },
  },
  fusionfx3 = {

    areaOfEffect       = 5,
    avoidFeature       = false,
    avoidFriendly      = false,
    beamTime           = 0.1,
    beamWeapon         = true,
    collideFeature     = false,
    collideFriendly    = false,
    coreThickness      = 0.1,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = "custom:burn",
    fallOffRate        = 0.5,
    minintensity       = 1,
    impulseFactor      = 0,
    largeBeamLaser     = true,
    lineOfSight        = true,
    name               = "Light Laser",
    noSelfDamage       = true,
    range              = 650,
    reloadtime         = 0.1,
    WeaponType         = "BeamLaser",
    rgbColor           = "0 0 0.5",
    rgbColor2          = "0.2 0.2 0.2",
    selfprop           = true,
    soundTrigger       = true,
    startVelocity      = 1500,
    targetMoveError    = 0.3,
    thickness          = 1,
    turret             = true,
    weaponVelocity     = 1500,
    damage = {
      default            = 0,
    },
  },
}
unitDef.weaponDefs = weaponDefs
--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
