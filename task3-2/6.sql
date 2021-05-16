SELECT AVG(salary) FROM developers dev
INNER JOIN developers_into_projects dip ON dip.developer_id = dev.id
INNER JOIN projects proj ON proj.id = dip.project_id
GROUP BY proj.cost
HAVING proj.cost = (SELECT MIN(projects.cost) FROM projects);