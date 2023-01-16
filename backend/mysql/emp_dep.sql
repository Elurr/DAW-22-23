USE empleados_departamentos;

-- 1. Obtener los datos completos de los empleados.
SELECT * FROM empleados;
SELECT * FROM departamentos;


select nombreDpto 
from departamentos 
where not lower(nombreDpto) = 'ventas' or nombreDpto = 'investigación' or nombreDpto = 'mantenimiento';
-- where lower(nombreDpto) not in ('ventas', 'investigación', 'mantenimiento');

-- 20. Obtener el nombre y el departamento de los empleados con cargo ‘Secretaria’ o ‘Vendedor’, que no trabajan en el departamento de “PRODUCCION”, cuyo salario es superior a $1.000.000, ordenados por fecha de incorporación. 
SELECT nomEmp, nombreDpto FROM departamentos d
	JOIN empleados e ON e.codDepto = d.codDepto
    WHERE cargoE IN ('Secretaria', 'Vendedor') 
		AND nombreDpto != 'PRODUCCIÓN'
        AND salEmp > 1000000
    ORDER BY fecIncorporacion;
 
-- 23. Listar los datos de los empleados cuyo nombre inicia por la letra ‘M’, su salario es mayor a $800.000 o reciben comisión y trabajan para el departamento de ‘VENTAS’
SELECT e.* FROM departamentos d
	JOIN empleados e ON e.codDepto = d.codDepto 
	WHERE nomEmp LIKE 'M%'
    AND (salEmp > 800000 OR comisionE > 0)
    AND nombreDpto != 'VENTAS';
 
-- 25. Mostrar el salario más alto de la empresa.         
SELECT nomEmp, salEmp FROM empleados
	ORDER BY salEmp DESC
    LIMIT 1;
    
-- 33. Mostrar el código y nombre de cada jefe, junto al número de empleados que dirige. Solo los que tengan mas de dos empleados (2 incluido).
SELECT jefeID ID_jefe, (SELECT nomEmp FROM empleados WHERE nDIEmp = ID_jefe) 'Nombre de jefe', COUNT(*) 'Número de empleados' FROM empleados 
	GROUP BY jefeID
    HAVING COUNT(*) >= 2;    
    
SELECT jefeID,  COUNT(*) 'Número de empleados' FROM empleados
	GROUP BY jefeID
    HAVING COUNT(*) >= 2;