SELECT au_fname, au_lname, a.city
  FROM authors a
  INNER JOIN publishers p
    ON a.city = p.city;