CREATE TABLE telephones (
  au_id    CHAR(3)  NOT NULL,
  tel_type CHAR(1)  NOT NULL,
  tel_no   CHAR(12) NOT NULL,
  PRIMARY KEY (au_id, tel_type)
  );

INSERT INTO telephones VALUES('A01','H','111-111-1111');
INSERT INTO telephones VALUES('A01','W','222-222-2222');
INSERT INTO telephones VALUES('A02','W','333-333-3333');
INSERT INTO telephones VALUES('A04','H','444-444-4444');
INSERT INTO telephones VALUES('A04','W','555-555-5555');
INSERT INTO telephones VALUES('A05','H','666-666-6666');
