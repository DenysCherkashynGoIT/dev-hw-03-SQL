SELECT AVG(salary) FROM developers dev
INNER JOIN usage us ON us.developer_id = dev.id
INNER JOIN projects proj ON proj.id = us.project_id
WHERE proj.cost = (SELECT MIN(projects.cost) FROM projects);