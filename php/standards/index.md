---
layout: php/page-with-content
programming_language: php
title: Estandares
date: 2015-04-14 10:44:15
categories: php
section: php section
section_name: php
icon: book
menu_order: 2
---

En Internet existe una gran cantidad de grupos de personas que se encargan de
buscar la mejor manera de hacer las cosas en todos los aspectos. Y si hablamos
de los referentes a las tecnologías de información podemos encontrarnos con
muchos de ellos.

Uno de estos grupos es el **Framework Interoperabiliy Group** quienes tienen la
tarea de hacer una recopilación de los puntos en común de los proyectos en PHP y
encontrar maneras de trabajar en conjunto.

El __FIG__ cuenta con una serie de recomendaciones las cuales hace llamar
**PSR** o **PHP Standar Recomendation** las cuales son elegidas basándose en
votaciones realizadas por los miembros del grupo y hasta la fecha cuentan con 4
PSR aceptadas y una que ha quedado obsoleta..

Descripción de las recomendaciones.
---------------------------

Las recomendaciones están divididas en un uso en especifico.

- **PSR-0 - Estandar de autocarga de clases** (__Obsoleta__)
    - Habla sobre la manera en la que deberian cargarse las clases, este estandar
    ha quedado obsoleto pero se sigue presentando por cuestiones de referencias
    hechas desde otros PSR's.
- **PSR-1 - Codificación estandar básica**
    - En su mayoria, este estandar hace referencia a los archivos como tal, la
    nomenclatura de que deberian de tener, las etiquetas que deberian de utilizar,
    el encoding del texto y los efectos secundarios que no deberian de presentar.
- **PSR-2 - Guía de estilo de codificación**
    - Extiende el estandar PSR-1 y contiene material referente a la sintaxis del
    código.
- **PSR-3 - Interfaz de log**
    - Este estandar no se incluye (hasta el momento) en la documentación y habla
    acerca de la manera en la que deberian de trabajar las clases __log__.
- **PSR-4 - Estándar de autocarga de clases (nueva versión)**
    - Esta es la nueva manera (aceptada) de trabajar con la autocarga de clases.
    Muchos de los frameworks (p.e. laravel) y clases que existen adoptan este
    estandar para realizar la autocarga de clases.
