---
layout: php/page-with-content
title: Introducción
date: 2015-04-14 10:44:15
categories: php
section: php section
section_name: php
icon: rocket
menu_order: 1
version: 1.0
---

Todo el material que encontraras en esta guía de programación utilza una serie
de estandares que se encuentran definidos en internet, estos estandares tienen
por nombre **PHP Standard Recomendations** y son proporcionados a la comunidad
por un grupo de usuarios que se dedican a implementar todas las buenas y mejores
prácticas en las recomendaciones. Si quieres saber mas acerca de donde encontrar
esta información en su fuente original consulta la sección de Notas Generales.

Las recomendaciones se encuentran divididas en varios archivos los cuales se
identifican por un nombre clave que se asigna cuando el documento se genera. Cada
archivo contiene información de una serie de temas en especifico y algunos de
ellos puede que se encuentre obsoleto ya sea por que una nueva versión reemplazará
su contenido o por cuestiones de compatibilidad, refiriendonos a que algún otro
estandar puede hacer referencia al estandar que ya no se deba de utilizar.

# Estandar de autocarga de clases

En un inicio PHP no contaba con una manera apropiada de trabajar con las
sentencias include, include_once, require y require_once que se utilizan para
incrustar el contenido de un archivo dentro de otro. Simplemente se utilizaban
para cargar un archivo haciendo una referencia directa a el, como por ejemplo:

```php
<?php

require "functions.php";

```

Con en uso de clases y las funciones de autocarga la cosa se complica un poco mas.
Es necesario definir de donde tenemos que cargar las clases cuando un require,
require_once, include, include_once o al crear una instacia de clase se ejecutan.
Por lo cual podemos tener ciertos directorios donde estos archivos se van a cargar
bajo una serie de reglas que podemos definir.

El framework Laravel actualmente utiliza composer para manejar sus dependencias,
y la manera de cargar las clases es mediante configuración, definimos los directorios
donde se encuentran las clases y composer se encargará de buscar el archivo de la
clase que necesitamos sin necesidad de realizar un `require` o `include`.
