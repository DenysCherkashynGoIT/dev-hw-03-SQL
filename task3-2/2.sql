WITH tab (id, costs) AS (SELECT projects.id AS ID,
						SUM(salary) AS costs
					FROM projects
					INNER JOIN developers_into_projects dip ON projects.id = dip.project_id
					INNER JOIN developers ON dip.developer_id = developers.id
					GROUP BY projects.id)
SELECT * FROM projects
INNER JOIN tab USING (id)
WHERE costs=(SELECT MAX(costs) FROM tab);