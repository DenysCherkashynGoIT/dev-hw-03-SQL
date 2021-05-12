ALTER TABLE projects ADD cost DECIMAL(12,2)
CHECK(cost>0);

UPDATE projects SET cost = 352650 WHERE id=1;
UPDATE projects SET cost = 250000 WHERE id=2;
UPDATE projects SET cost = 435800 WHERE id=3;
UPDATE projects SET cost = 610544 WHERE id=4;
UPDATE projects SET cost = 180000 WHERE id=5;
UPDATE projects SET cost = 700260 WHERE id=6;
UPDATE projects SET cost = 1000550 WHERE id=7;
UPDATE projects SET cost = 2500000 WHERE id=8;
