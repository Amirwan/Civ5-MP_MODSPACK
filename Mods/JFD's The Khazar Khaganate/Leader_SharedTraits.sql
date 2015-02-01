--=======================================================================================================================
-- Leader_SharedTraits
--=======================================================================================================================
CREATE TABLE IF NOT EXISTS 
    Leader_SharedTraits (
    LeaderType          text    REFERENCES Leaders(Type)        default null,
    TraitOne            text    REFERENCES Policies(Type)       default null,
    TraitTwo            text    REFERENCES Policies(Type)       default null);
     
INSERT OR REPLACE INTO Leader_SharedTraits
            (LeaderType,             TraitOne,                  TraitTwo)
VALUES      ('LEADER_JFD_BULAN',	 'POLICY_AGGRESSIVE_X',		'POLICY_MERCANTILE_X');
--=======================================================================================================================
-- Leaders
--=======================================================================================================================
UPDATE Leaders 
SET Description = (CASE WHEN EXISTS(SELECT Type FROM Policies WHERE Type = 'POLICY_PHILOSOPHICAL_X' )
	THEN 'Bulan [ICON_WAR][ICON_GOLD]'
	ELSE 'TXT_KEY_LEADER_JFD_BULAN' END) 
WHERE Type = 'LEADER_JFD_BULAN';

CREATE TRIGGER CivIVTraitsKhazaria
AFTER INSERT ON Leaders WHEN 'LEADER_JFD_BULAN' = NEW.Type
BEGIN
	UPDATE Leaders 
	SET Description = (CASE WHEN EXISTS(SELECT Type FROM Policies WHERE Type = 'POLICY_PHILOSOPHICAL_X' )
		THEN 'Bulan [ICON_WAR][ICON_GOLD]'
		ELSE 'TXT_KEY_LEADER_JFD_BULAN' END) 
	WHERE Type = 'LEADER_JFD_BULAN';
END;	
--=======================================================================================================================
--=======================================================================================================================

