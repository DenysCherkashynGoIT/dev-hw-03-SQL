ALTER TABLE developers ADD salary DECIMAL(12,2)
CHECK(salary>0);

UPDATE developers SET salary = 1500
WHERE id IN (2, 5, 9, 10, 11, 12, 14, 15, 17);

UPDATE developers SET salary = 2200
WHERE id IN (3, 13, 16, 19);

UPDATE developers SET salary = 3100
WHERE id IN (1, 4, 6, 7, 8, 18);