--==========================================================================================================================
-- ML_CivCultures
--==========================================================================================================================
CREATE TABLE IF NOT EXISTS ML_CivCultures (ID INTEGER PRIMARY KEY AUTOINCREMENT, CivType TEXT, CultureType TEXT, CultureEra TEXT DEFAULT 'ANY');
INSERT INTO ML_CivCultures
			(CivType,							CultureType,	CultureEra)
VALUES		('CIVILIZATION_JFD_SWITZERLAND',	'GERMANIC',		'ANY'),
			('CIVILIZATION_JFD_SWITZERLAND',	'FRENCH',		'ANY');
--==========================================================================================================================
--==========================================================================================================================