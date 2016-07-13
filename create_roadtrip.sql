CREATE TABLE roadtrip (
  seq   INTEGER     NOT NULL PRIMARY KEY,
  city  VARCHAR(17) NOT NULL,
  miles REAL        NOT NULL
  );

INSERT INTO roadtrip VALUES(1,'Seattle, WA',0);
INSERT INTO roadtrip VALUES(2,'Portland, OR',174);
INSERT INTO roadtrip VALUES(3,'San Francisco, CA',808);
INSERT INTO roadtrip VALUES(4,'Monterey, CA',926);
INSERT INTO roadtrip VALUES(5,'Los Angeles, CA',1251);
INSERT INTO roadtrip VALUES(6,'San Diego, CA',1372);
