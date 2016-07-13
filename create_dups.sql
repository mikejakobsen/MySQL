CREATE TABLE dups (
  id         INTEGER,
  title_name VARCHAR(40),
  type       VARCHAR(10),
  price      DECIMAL(5,2) 
  );

INSERT INTO dups VALUES(1,'Book Title 5','children',15.00);
INSERT INTO dups VALUES(2,'Book Title 3','biography',7.00);
INSERT INTO dups VALUES(3,'Book Title 1','history', 10.00);
INSERT INTO dups VALUES(4,'Book Title 2','children',20.00);
INSERT INTO dups VALUES(5,'Book Title 4','history', 15.00);
INSERT INTO dups VALUES(6,'Book Title 1','history', 10.00);
INSERT INTO dups VALUES(7,'Book Title 3','biography',7.00);
INSERT INTO dups VALUES(8,'Book Title 1','history', 10.00);
