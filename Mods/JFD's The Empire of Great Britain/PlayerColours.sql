--==========================================================================================================================	
-- Colors
--==========================================================================================================================			
INSERT OR REPLACE INTO Colors 
			(Type, 										Red, 	Green, 	Blue, 	Alpha)
VALUES		('COLOR_PLAYER_JFD_ENGLAND_ICON', 			0.898, 	0.847, 	0.674, 	1),
			('COLOR_PLAYER_JFD_ENGLAND_BACKGROUND', 	0.509,	0.050,	0.094, 	1);
--==========================================================================================================================	
-- PlayerColors
--==========================================================================================================================					
INSERT OR REPLACE INTO PlayerColors 
			(Type, 						PrimaryColor, 						SecondaryColor, 						TextColor)
VALUES		('PLAYERCOLOR_JFD_ENGLAND', 'COLOR_PLAYER_JFD_ENGLAND_ICON',	'COLOR_PLAYER_JFD_ENGLAND_BACKGROUND', 	'COLOR_PLAYER_WHITE_TEXT');
--==========================================================================================================================		
--==========================================================================================================================		
