SELECT SUM(salary) FROM developers dev
INNER JOIN developers_skills dev_sk ON dev_sk.developer_id = dev.id
INNER JOIN skills sk ON sk.id = dev_sk.skills_id
WHERE LOWER(sk.programming_lang) LIKE ('java');