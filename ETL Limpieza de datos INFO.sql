/*	Proceso ETL.

	LIMPIEZA DE DATOS.

Es un proceso que implica identificar, corregir y eliminar inconsistencias, errores y valores no deseados en un conjunto de datos.

Pasos a realizar:

1) Comprender los datos:
	Antes de comenzar con la limpieza, es importante comprender completamente los datos que estás tratando.
	Esto incluye conocer la estructura de los datos, entender el significado de cada campo y tener claridad sobre el contexto
	en el que se recopilaron los datos.

2) Identificar y manejar valores nulos o faltantes:
	Revisa tus datos en busca de valores nulos o faltantes en cada campo. Decide cómo manejar estos valores, ya sea eliminándolos,
	imputando valores predeterminados o utilizando técnicas más avanzadas de imputación.
		(Imputacion:
			La imputación es el proceso de reemplazar valores faltantes en un conjunto de datos con valores estimados.
			a)	Imputación por media o mediana: 
					Reemplazar los valores faltantes con la media o la mediana de la variable en cuestión.
			b)	Imputación por valores más frecuentes:
					Reemplazar los valores faltantes con el valor más frecuente en la variable.
			c) Imputación por regresión:
					Utilizar modelos de regresión u otros modelos predictivos para estimar los valores faltantes en función de otras variables
					en el conjunto de datos. Este enfoque es más sofisticado y puede producir estimaciones más precisas,
					pero también requiere más procesamiento y conocimientos técnicos.
			d)	Imputación múltiple:
					Generar múltiples imputaciones para los valores faltantes y luego combinar los resultados para obtener una estimación final.
					Este enfoque es útil cuando la incertidumbre en las imputaciones es alta
					y se desea tener en cuenta esta incertidumbre en el análisis posterior.)

3) Detectar y corregir errores de entrada:
	Busca y corrige errores de entrada comunes, como errores tipográficos, inconsistencias en la capitalización, formatos incorrectos,
	fechas mal ingresadas, entre otros.

4) Estandarizar formatos de datos:
	Asegúrate de que los datos estén en formatos coherentes y estandarizados. Esto puede implicar convertir tipos de datos,
	normalizar unidades de medida, formatear fechas y ajustar la precisión de los valores numéricos.

5) Resolver inconsistencias y redundancias:
	Busca y resuelve inconsistencias en los datos, como valores que representan lo mismo pero se expresan de manera diferente.
	También elimina redundancias innecesarias para mantener la coherencia y la concisión en tus datos.

6) Eliminar duplicados:
	Identifica y elimina registros duplicados en tus datos. Los duplicados pueden distorsionar análisis y generar resultados sesgados,
	por lo que es importante eliminarlos de manera efectiva.

7) Validar la integridad referencial:
	Si tus datos están distribuidos en varias tablas relacionadas, asegúrate de que la integridad referencial se mantenga intacta
	después de la limpieza. Esto implica verificar las relaciones entre las tablas y asegurarse de que no se hayan introducido
	inconsistencias durante el proceso de limpieza.

8) Documentar los cambios realizados:
	Es importante mantener un registro de todos los cambios realizados durante el proceso de limpieza. Esto incluye las transformaciones
	aplicadas, las decisiones tomadas y cualquier información relevante sobre la calidad y la integridad de los datos.


*/