SELECT ward_department, style, COUNT(*)
AS q
FROM ward
GROUP BY ward_department, style;