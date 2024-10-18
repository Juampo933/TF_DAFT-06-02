# Proyecto ANY Manufacturing por DATA MIND

<br>

## DATAMIND

<br>

+ Borges Pons, Juan - Lider de equipo y analista
+ Hernandez, Estefany - Visualizacion de datos
+ Pucheta, Elian - Analista de datos
+ Riba, Alejandro - Analista de datos


<br>

## Nuestro Objetivo

Nuestro objetivo se centró en las sugerencias para resolver los problemas con la gestión de inventarios que enfrenta ANY Manufacturing, una distribuidora de bebidas. Mediante el análisis de datos y la implementación de modelos de optimización, se busco incrementar la eficiencia en la administración de inventarios, tratar el manejo de reposicion con proveedores teniendo en cuenta el transporte y la rotación de productos con diferentes KPIs

<br>

+ Automatizar los procesos de reposición de inventario, con una base de datos.
+ Evaluar y mejorar la seleccion de proveedores.
+ Identificar productos de baja rotación y ajustar las estrategias de compra.
+ Mejorar la eficiencia de ventas a largo plazo mediante propuestas basadas en datos históricos.

<br>

## Repositorio

<br>

+ Procesos de ETL, EDA y la Automatizacion de ingesta
+ Diagrama Entidad-Relacion
+ Dashborad PowerBi
+ Links a CSV inciales y finales
+ README.md

<br>

## Carpeta Procesos 🔗

<br>

En esta apartado se encuentran la carpeta de ETL y EDA, donde los archivos con extensión(.ipynb) contienen el proceso de limpiesa y la exploracion de analisis de datos para este proyecto. \
En la carpeta Automatización de ingesta se ecuentra el reporte y explicación del proceso, el script con el proceso completo de automatización para la carga incremental de datos utilizando Python. Este proceso está diseñado para transferir los nuevos registros de manera eficiente hacia la base de datos, que está alojada la nube de la platafomra Azure con extensión de SQL Server, con la implementacion de la bilioteca Watchdogs para la observacion de una carpeta segura y una clase asegurando que solo se carguen los datos que no existían previamente en la base de datos, optimizando así el rendimiento y la gestión de los recursos.

<br>

## Carpeta Diagrama ER

<br>

Esta carpeta contiene una imagen del Diagrama de Entidad-Relación (DER) de la base de datos. La imagen muestra las relaciones entre las tablas y ofrece una visión clara de la estructura que utilizamos para nuestro Dashboard para el reporte final.

<br>

## Carpeta Links CSV

<br>

En esta carpeta se han cargado dos archivos(.txt) con los links a los CSV Iniciales que obtuvimos para nuestro proyecto. \ 
CSV Limpios corresponde a los archivos obtenidos despues de los procesos ETL y EDA.

<br>

## Carpeta Dashboard en PowerBi

<br>

En esta carpeta se guardaró nuestro archivo(.pbix) con el Dashboard final para presentar a nuestros clientes de ANY Manufacturing.
