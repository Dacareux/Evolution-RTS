-- UNITDEF -- EJAMMER2 --
--------------------------------------------------------------------------------

local unitName                    = "ejammer2"

--------------------------------------------------------------------------------

local armortype					 = [[building]]

local unitDef                     = {
	activateWhenBuilt             = true,
	buildAngle                    = 16384,
	buildCostEnergy               = 0,
	buildCostMetal                = 20,
	builder                       = false,
	buildTime                     = 5,
	category                      = "BUILDING NOTAIR",
	corpse                        = "ammobox",
	description                   = [[Radar Jamming Tower
Armortype: ]] ..armortype.. [[ 

Generates a Cloaking Field
Drains -5 Energy while emitting cloaking field]],
	energyMake                    = 0,
	energyStorage                 = 0,
	energyUse                     = 0,
	explodeAs                     = "smallBuildingExplosionGenericPurple",
	footprintX                    = 4,
	footprintZ                    = 4,
	iconType                      = "radarjam",
	idleAutoHeal                  = .5,
	idleTime                      = 2200,
	maxDamage                     = 280,
	maxSlope                      = 60,
	maxWaterDepth                 = 5000,
	metalStorage                  = 0,
	name                          = "Radar Jamming/Cloaking Tower",
	objectName                    = "ejammer3.s3o",
	script						  = "ejammer3.cob",
	onoffable                     = true,
	radarDistanceJam              = 500,
	repairable		              = false,
	selfDestructAs                = "smallBuildingExplosionGenericPurple",
	side                          = "CORE",
	sightDistance                 = 500,
	smoothAnim                    = true,
	sonarDistance                 = 0,
	unitname                      = "ejammer2",
	workerTime                    = 0,
	yardMap                       = "oooo oooo oooo oooo",

	sfxtypes                      = {
		pieceExplosionGenerators  = {
			"deathceg3",
			"deathceg4",
		},
		explosiongenerators       = {
			"custom:blacksmoke",
		},
	},

	sounds                        = {
		underattack               = "unitsunderattack1",
		select                    = {
			"gdradar",
		},
	},
	customParams                  = {
		cannotcloak               = true,
		needed_cover              = 3,
		death_sounds              = "generic",
		armortype                 = armortype,
		normaltex                = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                 = "unittextures/lego2skin_explorerbucket.dds",
	},
	useGroundDecal                = true,
	BuildingGroundDecalType       = "factorygroundplate.dds",
	BuildingGroundDecalSizeX      = 6,
	BuildingGroundDecalSizeY      = 6,
	BuildingGroundDecalDecaySpeed = 0.9,
}


--------------------------------------------------------------------------------

return lowerkeys({ [unitName]     = unitDef })

--------------------------------------------------------------------------------
