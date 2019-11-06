-- Création du schéma
CREATE SCHEMA code_naf;
COMMENT ON SCHEMA code_naf IS 'Référentiel des codes NAF';


-- Création des tables
CREATE TABLE code_naf.naf_niv1 (
   code_n1 character(1) NOT NULL,
   code_n1_lib text NOT NULL,
   code_n1_lib_65 character varying(65) NOT NULL,
   code_n1_lib_40 character varying(40) NOT NULL,
   CONSTRAINT pk_naf_code_niv1 PRIMARY KEY (code_n1)
);
COMMENT ON TABLE code_naf.naf_niv1 IS 'Table des codes de référentiel NAF de Niveau 1 (Niveau SECTIONS)';
COMMENT ON COLUMN code_naf.naf_niv1.code_n1 IS 'Code de Niveau 1';
COMMENT ON COLUMN code_naf.naf_niv1.code_n1_lib IS 'Libellé Complet du Code Niveau 1';
COMMENT ON COLUMN code_naf.naf_niv1.code_n1_lib_65 IS 'Libellé 65 caractères du Code Niveau 1';
COMMENT ON COLUMN code_naf.naf_niv1.code_n1_lib_40 IS 'Libellé 40 caractères du Code Niveau 1';

CREATE TABLE code_naf.naf_niv2 (
   code_n2 character(2) NOT NULL,
   code_n1 character(1) NOT NULL,
   code_n2_lib text NOT NULL,
   code_n2_lib_65 character varying(65) NOT NULL,
   code_n2_lib_40 character varying(40) NOT NULL,
   CONSTRAINT pk_naf_code_niv2 PRIMARY KEY (code_n2)
);
COMMENT ON TABLE code_naf.naf_niv2 IS 'Table des codes de référentiel NAF de Niveau 2 (Niveau DIVISIONS)';
COMMENT ON COLUMN code_naf.naf_niv2.code_n2 IS 'Code de Niveau 2';
COMMENT ON COLUMN code_naf.naf_niv2.code_n1 IS 'Code de Niveau 1';
COMMENT ON COLUMN code_naf.naf_niv2.code_n2_lib IS 'Libellé Complet du Code Niveau 2';
COMMENT ON COLUMN code_naf.naf_niv2.code_n2_lib_65 IS 'Libellé 65 caractères du Code Niveau 2';
COMMENT ON COLUMN code_naf.naf_niv2.code_n2_lib_40 IS 'Libellé 40 caractères du Code Niveau 2';

CREATE TABLE code_naf.naf_niv3 (
   code_n3 character(4) NOT NULL,
   code_n2 character(2) NOT NULL,
   code_n1 character(1) NOT NULL,
   code_n3_lib text NOT NULL,
   code_n3_lib_65 character varying(65) NOT NULL,
   code_n3_lib_40 character varying(40) NOT NULL,
   CONSTRAINT pk_naf_code_niv3 PRIMARY KEY (code_n3)
);
COMMENT ON TABLE code_naf.naf_niv3 IS 'Table des codes de référentiel NAF de Niveau 3 (Niveau GROUPES)';
COMMENT ON COLUMN code_naf.naf_niv3.code_n3 IS 'Code de Niveau 3';
COMMENT ON COLUMN code_naf.naf_niv3.code_n2 IS 'Code de Niveau 2';
COMMENT ON COLUMN code_naf.naf_niv3.code_n1 IS 'Code de Niveau 1';
COMMENT ON COLUMN code_naf.naf_niv3.code_n3_lib IS 'Libellé Complet du Code Niveau 3';
COMMENT ON COLUMN code_naf.naf_niv3.code_n3_lib_65 IS 'Libellé 65 caractères du Code Niveau 3';
COMMENT ON COLUMN code_naf.naf_niv3.code_n3_lib_40 IS 'Libellé 40 caractères du Code Niveau 3';

CREATE TABLE code_naf.naf_niv4 (
   code_n4 character(5) NOT NULL,
   code_n3 character(4) NOT NULL,
   code_n2 character(2) NOT NULL,
   code_n1 character(1) NOT NULL,
   code_n4_lib text NOT NULL,
   code_n4_lib_65 character varying(65) NOT NULL,
   code_n4_lib_40 character varying(40) NOT NULL,
   CONSTRAINT pk_naf_code_niv4 PRIMARY KEY (code_n4)
);
COMMENT ON TABLE code_naf.naf_niv4 IS 'Table des codes de référentiel NAF de Niveau 4 (Niveau CLASSES)';
COMMENT ON COLUMN code_naf.naf_niv4.code_n4 IS 'Code de Niveau 4';
COMMENT ON COLUMN code_naf.naf_niv4.code_n3 IS 'Code de Niveau 3';
COMMENT ON COLUMN code_naf.naf_niv4.code_n2 IS 'Code de Niveau 2';
COMMENT ON COLUMN code_naf.naf_niv4.code_n1 IS 'Code de Niveau 1';
COMMENT ON COLUMN code_naf.naf_niv4.code_n4_lib IS 'Libellé Complet du Code Niveau 4';
COMMENT ON COLUMN code_naf.naf_niv4.code_n4_lib_65 IS 'Libellé 65 caractères du Code Niveau 4';
COMMENT ON COLUMN code_naf.naf_niv4.code_n4_lib_40 IS 'Libellé 40 caractères du Code Niveau 4';

CREATE TABLE code_naf.naf_niv5 (
   code_n5 character(6) NOT NULL,
   code_n4 character(5) NOT NULL,
   code_n3 character(4) NOT NULL,
   code_n2 character(2) NOT NULL,
   code_n1 character(1) NOT NULL,
   code_n5_lib text NOT NULL,
   code_n5_lib_65 character varying(65) NOT NULL,
   code_n5_lib_40 character varying(40) NOT NULL,
   CONSTRAINT pk_naf_code_niv5 PRIMARY KEY (code_n5)
);
COMMENT ON TABLE code_naf.naf_niv5 IS 'Table des codes de référentiel NAF de Niveau 5 (Niveau SOUS-CLASSES)';
COMMENT ON COLUMN code_naf.naf_niv5.code_n5 IS 'Code de Niveau 5';
COMMENT ON COLUMN code_naf.naf_niv5.code_n4 IS 'Code de Niveau 4';
COMMENT ON COLUMN code_naf.naf_niv5.code_n3 IS 'Code de Niveau 3';
COMMENT ON COLUMN code_naf.naf_niv5.code_n2 IS 'Code de Niveau 2';
COMMENT ON COLUMN code_naf.naf_niv5.code_n1 IS 'Code de Niveau 1';
COMMENT ON COLUMN code_naf.naf_niv5.code_n5_lib IS 'Libellé Complet du Code Niveau 5';
COMMENT ON COLUMN code_naf.naf_niv5.code_n5_lib_65 IS 'Libellé 65 caractères du Code Niveau 5';
COMMENT ON COLUMN code_naf.naf_niv5.code_n5_lib_40 IS 'Libellé 40 caractères du Code Niveau 5';


-- Création des Index de référence inter-niveaux
CREATE INDEX idx_naf_niv2_code_n1 ON code_naf.naf_niv2 (code_n1 ASC NULLS LAST);
COMMENT ON INDEX code_naf.idx_naf_niv2_code_n1 IS 'Index du Code de Niveau 1 dans la table Niveau 2';
CREATE INDEX idx_naf_niv3_code_n1 ON code_naf.naf_niv3 (code_n1 ASC NULLS LAST);
COMMENT ON INDEX code_naf.idx_naf_niv3_code_n1 IS 'Index du Code de Niveau 1 dans la table Niveau 3';
CREATE INDEX idx_naf_niv4_code_n1 ON code_naf.naf_niv4 (code_n1 ASC NULLS LAST);
COMMENT ON INDEX code_naf.idx_naf_niv4_code_n1 IS 'Index du Code de Niveau 1 dans la table Niveau 4';
CREATE INDEX idx_naf_niv5_code_n1 ON code_naf.naf_niv5 (code_n1 ASC NULLS LAST);
COMMENT ON INDEX code_naf.idx_naf_niv5_code_n1 IS 'Index du Code de Niveau 1 dans la table Niveau 5';
CREATE INDEX idx_naf_niv3_code_n2 ON code_naf.naf_niv3 (code_n2 ASC NULLS LAST);
COMMENT ON INDEX code_naf.idx_naf_niv3_code_n2 IS 'Index du Code de Niveau 2 dans la table Niveau 3';
CREATE INDEX idx_naf_niv4_code_n2 ON code_naf.naf_niv4 (code_n2 ASC NULLS LAST);
COMMENT ON INDEX code_naf.idx_naf_niv4_code_n2 IS 'Index du Code de Niveau 2 dans la table Niveau 4';
CREATE INDEX idx_naf_niv5_code_n2 ON code_naf.naf_niv5 (code_n2 ASC NULLS LAST);
COMMENT ON INDEX code_naf.idx_naf_niv5_code_n2 IS 'Index du Code de Niveau 2 dans la table Niveau 5';
CREATE INDEX idx_naf_niv4_code_n3 ON code_naf.naf_niv4 (code_n3 ASC NULLS LAST);
COMMENT ON INDEX code_naf.idx_naf_niv4_code_n3 IS 'Index du Code de Niveau 3 dans la table Niveau 4';
CREATE INDEX idx_naf_niv5_code_n3 ON code_naf.naf_niv5 (code_n3 ASC NULLS LAST);
COMMENT ON INDEX code_naf.idx_naf_niv5_code_n3 IS 'Index du Code de Niveau 3 dans la table Niveau 5';
CREATE INDEX idx_naf_niv5_code_n4 ON code_naf.naf_niv5 (code_n4 ASC NULLS LAST);
COMMENT ON INDEX code_naf.idx_naf_niv5_code_n4 IS 'Index du Code de Niveau 4 dans la table Niveau 5';



-- Importation des fichiers CSV
COPY code_naf.naf_niv1 FROM '/big_data/risk_profile/code_naf/codes_naf_niv_1.csv' CSV DELIMITER '_' HEADER ENCODING 'utf-8';
COPY code_naf.naf_niv2 FROM '/big_data/risk_profile/code_naf/codes_naf_niv_2.csv' CSV DELIMITER '_' HEADER ENCODING 'utf-8';
COPY code_naf.naf_niv3 FROM '/big_data/risk_profile/code_naf/codes_naf_niv_3.csv' CSV DELIMITER '_' HEADER ENCODING 'utf-8';
COPY code_naf.naf_niv4 FROM '/big_data/risk_profile/code_naf/codes_naf_niv_4.csv' CSV DELIMITER '_' HEADER ENCODING 'utf-8';
COPY code_naf.naf_niv5 FROM '/big_data/risk_profile/code_naf/codes_naf_niv_5.csv' CSV DELIMITER '_' HEADER ENCODING 'utf-8';


-- Fonction détails pour un code de niveau 5
CREATE OR REPLACE FUNCTION code_naf.get_details_code_n5(in_code_n5 text) returns TABLE (
	code_n1	CHARACTER(1)
	, lib_n1 TEXT
	, code_n2 CHARACTER(2)
	, lib_n2 TEXT
	, code_n3 CHARACTER(4)
	, lib_n3 TEXT
	, code_n4 CHARACTER(5)
	, lib_n4 TEXT
	, code_n5 CHARACTER(6)
	, lib_n5 TEXT
)
AS
$$
BEGIN
	RETURN QUERY SELECT
		n1.code_n1 as code_n1
		, n1.code_n1_lib AS lib_n1
		, n2.code_n2 as code_n2
		, n2.code_n2_lib AS lib_n2
		, n3.code_n3 as code_n3
		, n3.code_n3_lib AS lib_n3
		, n4.code_n4 as code_n4
		, n4.code_n4_lib AS lib_n4
		, n5.code_n5 as code_n5
		, n5.code_n5_lib AS lib_n5
	FROM
		code_naf.naf_niv1 AS n1
		JOIN code_naf.naf_niv2 AS n2 ON n2.code_n1 = n1.code_n1
		JOIN code_naf.naf_niv3 AS n3 ON n3.code_n2 = n2.code_n2
		JOIN code_naf.naf_niv4 AS n4 ON n4.code_n3 = n3.code_n3
		JOIN code_naf.naf_niv5 AS n5 ON n5.code_n4 = n4.code_n4
	WHERE
		n5.code_n5 = in_code_n5
	;

END;
$$
LANGUAGE PLPGSQL;

CREATE OR REPLACE FUNCTION code_naf.format_code_n5(in_code_n5 TEXT) RETURNS CHARACTER(6) AS

/* Renvoie un code de Niveau 5 formaté sur 5 caractères (Ex : 6202A) en code formaté sur 6 caractères (Ex : 62.020A) */

$$
DECLARE v TEXT := '';
BEGIN
	IF
		char_length(in_code_n5) <> 5
	THEN
		v := 'ERROR FORMAT';
	ELSE
		v := left(in_code_n5, 2) || '.' || right(in_code_n5, 3);
	END IF;
	RETURN v;
END;
$$
language plpgsql;



--
SELECT * FROM code_naf.get_details_code_n5('51.10Z');
