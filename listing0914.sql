CREATE TABLE temp09 (
  i CHAR(1) NOT NULL PRIMARY KEY
  );
  
INSERT INTO temp09 VALUES('0');
INSERT INTO temp09 VALUES('1');
INSERT INTO temp09 VALUES('2');
INSERT INTO temp09 VALUES('3');
INSERT INTO temp09 VALUES('4');
INSERT INTO temp09 VALUES('5');
INSERT INTO temp09 VALUES('6');
INSERT INTO temp09 VALUES('7');
INSERT INTO temp09 VALUES('8');
INSERT INTO temp09 VALUES('9');

CREATE TABLE seq (
  i INTEGER NOT NULL PRIMARY KEY
  );

INSERT INTO seq
  SELECT CAST(t1.i || t2.i || 
      t3.i || t4.i AS INTEGER)
    FROM temp09 t1, temp09 t2, 
         temp09 t3, temp09 t4;

DROP TABLE temp09;