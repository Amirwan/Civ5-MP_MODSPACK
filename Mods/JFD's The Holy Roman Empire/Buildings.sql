--==========================================================================================================================	
-- BuildingClasses
--==========================================================================================================================	
INSERT OR REPLACE INTO BuildingClasses 	
			(Type, 						 DefaultBuilding, 		Description)
VALUES		('BUILDINGCLASS_JFD_VENICE', 'BUILDING_JFD_VENICE', 'TXT_KEY_BUILDING_JFD_VENICE');
--==========================================================================================================================	
-- Buildings
--==========================================================================================================================	
INSERT INTO Buildings 	
			(Type, 						BuildingClass, 					GreatWorkCount,	Cost,	FaithCost,	PrereqTech,	Description, 					Help,								NeverCapture)
VALUES		('BUILDING_JFD_VENICE',		'BUILDINGCLASS_JFD_VENICE', 	-1,				-1,		-1, 		null, 		'TXT_KEY_BUILDING_JFD_VENICE',	'TXT_KEY_BUILDING_JFD_VENICE_HELP',	1);
--==========================================================================================================================	
-- Building_YieldModifiers
--==========================================================================================================================	
INSERT INTO Building_YieldModifiers
			(BuildingType,			YieldType,		Yield)
VALUES		('BUILDING_JFD_VENICE', 'YIELD_GOLD',	10);
--==========================================================================================================================	
--==========================================================================================================================	