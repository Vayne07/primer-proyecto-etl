/*	Proceso ETL.

	LIMPIEZA DE DATOS.

Es un proceso que implica identificar, corregir y eliminar inconsistencias, errores y valores no deseados en un conjunto de datos.

Pasos a realizar:

1) Comprender los datos:
	Antes de comenzar con la limpieza, es importante comprender completamente los datos que est�s tratando.
	Esto incluye conocer la estructura de los datos, entender el significado de cada campo y tener claridad sobre el contexto
	en el que se recopilaron los datos.

2) Identificar y manejar valores nulos o faltantes:
	Revisa tus datos en busca de valores nulos o faltantes en cada campo. Decide c�mo manejar estos valores, ya sea elimin�ndolos,
	imputando valores predeterminados o utilizando t�cnicas m�s avanzadas de imputaci�n.
		(Imputacion:
			La imputaci�n es el proceso de reemplazar valores faltantes en un conjunto de datos con valores estimados.
			a)	Imputaci�n por media o mediana: 
					Reemplazar los valores faltantes con la media o la mediana de la variable en cuesti�n.
			b)	Imputaci�n por valores m�s frecuentes:
					Reemplazar los valores faltantes con el valor m�s frecuente en la variable.
			c) Imputaci�n por regresi�n:
					Utilizar modelos de regresi�n u otros modelos predictivos para estimar los valores faltantes en funci�n de otras variables
					en el conjunto de datos. Este enfoque es m�s sofisticado y puede producir estimaciones m�s precisas,
					pero tambi�n requiere m�s procesamiento y conocimientos t�cnicos.
			d)	Imputaci�n m�ltiple:
					Generar m�ltiples imputaciones para los valores faltantes y luego combinar los resultados para obtener una estimaci�n final.
					Este enfoque es �til cuando la incertidumbre en las imputaciones es alta
					y se desea tener en cuenta esta incertidumbre en el an�lisis posterior.)

3) Detectar y corregir errores de entrada:
	Busca y corrige errores de entrada comunes, como errores tipogr�ficos, inconsistencias en la capitalizaci�n, formatos incorrectos,
	fechas mal ingresadas, entre otros.

4) Estandarizar formatos de datos:
	Aseg�rate de que los datos est�n en formatos coherentes y estandarizados. Esto puede implicar convertir tipos de datos,
	normalizar unidades de medida, formatear fechas y ajustar la precisi�n de los valores num�ricos.

5) Resolver inconsistencias y redundancias:
	Busca y resuelve inconsistencias en los datos, como valores que representan lo mismo pero se expresan de manera diferente.
	Tambi�n elimina redundancias innecesarias para mantener la coherencia y la concisi�n en tus datos.

6) Eliminar duplicados:
	Identifica y elimina registros duplicados en tus datos. Los duplicados pueden distorsionar an�lisis y generar resultados sesgados,
	por lo que es importante eliminarlos de manera efectiva.

7) Validar la integridad referencial:
	Si tus datos est�n distribuidos en varias tablas relacionadas, aseg�rate de que la integridad referencial se mantenga intacta
	despu�s de la limpieza. Esto implica verificar las relaciones entre las tablas y asegurarse de que no se hayan introducido
	inconsistencias durante el proceso de limpieza.

8) Documentar los cambios realizados:
	Es importante mantener un registro de todos los cambios realizados durante el proceso de limpieza. Esto incluye las transformaciones
	aplicadas, las decisiones tomadas y cualquier informaci�n relevante sobre la calidad y la integridad de los datos.


*/