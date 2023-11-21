SELECT  date_part('year', rentas.fecha_renta) AS anio,
		date_part('month', rentas.fecha_renta) AS mes,
		COUNT (*) AS numero_rentas
FROM rentas
GROUP BY anio, mes
ORDER BY anio, mes;