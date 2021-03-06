-- UNITDEF -- EALLTERRASSAULT --
--------------------------------------------------------------------------------

local unitName                   = "eallterrassault"

--------------------------------------------------------------------------------

local power						 = [[12 power]]
local armortype					 = [[armored]]
local supply					 = [[8]]

local weapon1Damage              = 150
local weapon1AOE				 = 1
local energycosttofire			 = weapon1Damage / 10 * ((weapon1AOE / 1000) + 1)

local function roundToFirstDecimal(energycosttofire)
    return math.floor(energycosttofire*10 + 0.5)*0.1
end

local unitDef                    = {

	--mobileunit 
	transportbyenemy             = false;

	--**


	acceleration                 = 1,
	brakeRate                    = 1,
	buildCostEnergy              = 0,
	buildCostMetal               = 60,
	builder                      = false,
	buildTime                    = 5,
	canAttack                    = true,
	cancollect                   = "1",
	canGuard                     = true,
	canMove                      = true,
	canPatrol                    = true,
	canstop                      = "1",
	category                     = "ARMORED NOTAIR SKIRMISHER",
	corpse                       = "ammobox",

	-- Cloaking

	cancloak		             = true,
	cloakCost		             = 1,
	cloakCostMoving	             = 2,
	minCloakDistance             = 70,
	decloakOnFire	             = true,
	decloakSpherical             = true,
	initCloaked		             = false,
	
	-- End Cloaking

	description                  =[[Unit Type: Anti-Base Long Range Siege Tank
Armortype: ]] ..armortype.. [[ 

150 Damage vs Buildings
75 Damage vs Light/Armored

This unit can only fire at buildings!

Energy cost to fire: ]] .. roundToFirstDecimal(energycosttofire) .. [[ 

Requires +]] .. power .. [[ 
Uses +]] .. supply .. [[ Supply]],
	energyMake                   = 0,
	energyStorage                = 0,
	energyUse                    = 0,
	explodeAs                    = "hugeExplosionGeneric",
	firestandorders              = "1",
	footprintX                   = 6,
	footprintZ                   = 6,
	iconType                     = "assault",
	idleAutoHeal                 = .5,
	idleTime                     = 2200,
	leaveTracks                  = false,
	maxDamage                    = 400,
	maxVelocity                  = 2.4,
	maxReverseVelocity           = 1,
	maxWaterDepth                = 10,
	metalStorage                 = 0,
	movementClass                = "ALLTERRTANK6",
	name                         = "Anvil",
	noChaseCategory              = "VTOL",
	objectName                   = "eallterrassault.s3o",
	radarDistance                = 0,
	repairable		             = false,
	selfDestructAs               = "hugeExplosionGeneric",
	shootme                      = "1",
	sightDistance                = 1000,
	smoothAnim                   = true,
	stealth			             = true,
	seismicSignature             = 2,
	turnInPlace                  = true,
	turnRate                     = 5000,
	unitname                     = "eallterrassault",
	unitnumber                   = "110",
	upright                      = false,
	workerTime                   = 0,
	sfxtypes                     = { 
		pieceExplosionGenerators = { 
			"deathceg3", 
			"deathceg4", 
		}, 

		explosiongenerators      = {
			"custom:gdhcannon",
			"custom:dirtsmall",
			"custom:blacksmoke",
		},
	},
	sounds                       = {
		underattack              = "unitsunderattack1",
		ok                       = {
			"ack",
		},
		select                   = {
			"unitselect",
		},
	},
	weapons                      = {
		[1]                      = {
			def                  = "assaulttankcannon",
		},
	},
	customParams                 = {
		canbetransported 		 = "true",
		needed_cover             = 4,
		death_sounds             = "generic",
		RequireTech              = power,
		armortype                = armortype,
		nofriendlyfire	         = "1",
		supply_cost              = supply,
		normaltex               = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                = "unittextures/lego2skin_explorerbucket.dds",
		factionname	             = "outer_colonies",  
	},
}


--------------------------------------------------------------------------------
-- Energy Per Shot Calculation is: dmg / 20 * ((aoe / 1000) + 1)

local weaponDefs                 = {
	assaulttankcannon            = {
		AreaOfEffect             = weapon1AOE,
		avoidFriendly            = false,
		avoidFeature             = false,
		collideFriendly          = false,
		collideFeature           = false,
		beamTime                 = 0.1,
		coreThickness            = 0.6,
		--	cegTag               = "mediumcannonweapon3",
		duration                 = 0.2,
		energypershot            = energycosttofire,
		explosionGenerator       = "custom:genericshellexplosion-large-purple",
		fallOffRate              = 1,
		fireStarter              = 100,
		impulseFactor            = 0,
		interceptedByShieldType  = 4,
		minintensity             = "1",
		name                     = "Laser",
		range                    = 1100,
		reloadtime               = 3,
		WeaponType               = "LaserCannon",
		rgbColor                 = "0.5 0 1",
		rgbColor2                = "1 1 1",
		soundTrigger             = true,
		soundstart               = "allterrassaultshot.wav",
		soundHit                 = "assaultshothit.wav",
		texture1                 = "shot",
		texture2                 = "empty",
		thickness                = 9,
		tolerance                = 1000,
		turret                   = true,
		weaponVelocity           = 2000,
		customparams             = {
			damagetype		     = "eallterrassault",  
			
			--Upgrades--
			upgradeClass		 = "groundweapons",
		}, 
		damage                   = {
			default              = weapon1Damage,
		},
	},
}
unitDef.weaponDefs               = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName]    = unitDef })

--------------------------------------------------------------------------------

