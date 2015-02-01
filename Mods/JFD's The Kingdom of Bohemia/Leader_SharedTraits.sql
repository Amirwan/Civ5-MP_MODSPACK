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
VALUES      ('LEADER_JFD_VACLAV',	 'POLICY_PHILOSOPHICAL_X',	'POLICY_PROTECTIVE_X');
--=======================================================================================================================
-- Leaders
--=======================================================================================================================
UPDATE Leaders 
SET Description = (CASE WHEN EXISTS(SELECT Type FROM Policies WHERE Type = 'POLICY_PHILOSOPHICAL_X' )
	THEN 'Vaclav II [ICON_GREAT_PEOPLE][ICON_STRENGTH]'
	ELSE 'TXT_KEY_LEADER_JFD_VACLAV' END) 
WHERE Type = 'LEADER_JFD_VACLAV';

CREATE TRIGGER CivIVTraitsBohemia
AFTER INSERT ON Leaders WHEN 'LEADER_JFD_VACLAV' = NEW.Type
BEGIN
	UPDATE Leaders 
	SET Description = (CASE WHEN EXISTS(SELECT Type FROM Policies WHERE Type = 'POLICY_PHILOSOPHICAL_X' )
		THEN 'Vaclav II [ICON_GREAT_PEOPLE][ICON_STRENGTH]'
		ELSE 'TXT_KEY_LEADER_JFD_VACLAV' END) 
	WHERE Type = 'LEADER_JFD_VACLAV';
END;	
--=======================================================================================================================
--=======================================================================================================================

