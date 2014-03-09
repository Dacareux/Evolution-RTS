-- UNITDEF -- ELIGHTTANK3 --
--------------------------------------------------------------------------------

local unitName = "elighttank3"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 1,
  brakeRate          = 0.1,
  buildCostEnergy    = 0,
  buildCostMetal     = 27,
  builder            = false,
  buildTime          = 5,
  canAttack          = true,
  cancollect         = "1",
  canGuard           = true,
  canHover           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "LIGHT NOTAIR RAID",
  corpse             = "ammobox",
  description        = [[Raider
Light
43 Damage vs Light/Armored/Building

Requires +3 Power
Uses +3 Supply]],
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "SMALL_UNIT",
  footprintX         = 2,
  footprintZ         = 2,
  iconType           = "raider",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  leaveTracks        = false,
  maxDamage          = 250,
  maxSlope           = 26,
  maxVelocity        = 5,
  maxReverseVelocity = 2,
  maxWaterDepth      = 10,
  metalStorage       = 0,
  movementClass      = "HOVERTANK2",
  name               = "Kite",
  noChaseCategory    = "VTOL",
  objectName         = "elighttank4.s3o",
  radarDistance      = 0,
  repairable		 = false,
 selfDestructAs     = "SMALL_UNIT",
  side               = "CORE",
  sightDistance      = 500,
  smoothAnim         = true,
  seismicDistance    = 500,
  --  turnInPlace        = false,
  --  turnInPlaceSpeedLimit = 5.5,
  turnRate           = 1000,
--  turnrate           = 475,
  unitname           = "elighttank3",
  upright            = true,
  workerTime         = 0,

sfxtypes = {
	explosiongenerators = {
		"custom:factorysparks",
		"custom:dirt",
		"custom:blacksmoke",
    },
	pieceExplosionGenerators = {
		"deathceg0",
		"deathceg1",
	},	
},

  sounds = {
    underattack        = "unitsunderattack1",
    ok = {
      "ack",
    },
    select = {
      "unitselect",
    },
  },
  weapons = {
    [1]  = {
      def                = "lighttankweapon",
      badTargetCategory  = "VTOL ARMORED WALL",
    },
  },
  customParams = {
    needed_cover = 1,
	death_sounds = "generic",
    RequireTech = "3 Power",
	armortype   = "light",
	nofriendlyfire	= "1",
	supply_cost = 3,
	normaltex = "unittextures/lego2skin_explorernormal.dds", 
	helptext = [[]],
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  lighttankweapon = {
    badTargetCategory = [[ARMORED BUILDING]],
    AreaOfEffect       = 1,
	avoidFriendly      = false,
    avoidFeature       = false,
	collideFriendly    = false,
    collideFeature     = false,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = "custom:genericshellexplosion-medium-lightning",
	energypershot      = 2,
    impulseBoost       = 0,
    impulseFactor      = 0,
    interceptedByShieldType = 4,
    lineOfSight        = true,
    noSelfDamage       = true,
    range              = 500,
    reloadtime         = 1,
    WeaponType         = "LightningCannon",
    rgbColor           = "0.1 0.2 0.5",
    rgbColor2          = "0 0 1",
    soundStart         = "jacobs.wav",
    startsmoke         = "1",
    texture1           = "lightning",
    thickness          = 5,
    turret             = true,
    weaponVelocity     = 400,
	customparams = {
	  damagetype		= "elighttank3",
	  
	  --Upgrades--
	  upgradeClass		= "groundweapons",
    },      
    damage = {
      default           = 43,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
