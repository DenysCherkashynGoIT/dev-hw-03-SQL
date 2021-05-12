WITH tab (id, costs) AS (SELECT projects.id AS ID,
						SUM(salary) AS costs
					FROM projects
					INNER JOIN USAGE ON projects.id = usage.project_id
					INNER JOIN developers ON usage.developer_id = developers.id
					GROUP BY projects.id)
SELECT * FROM projects
INNER JOIN tab USING (id)
WHERE costs=(SELECT MAX(costs) FROM tab);