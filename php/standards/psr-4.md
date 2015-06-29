---
layout: php/page-with-content
title:  "Estándar de autocarga de clases"
menu_title: "PSR-4"
date:   2015-04-16 09:09:00
categories: php standard
menu_order: 4
version: 1.0
---

<div id="toc"></div>

> En el documento original se usa el [RFC 2119][] para el uso de las palabras
MUST, MUST NOT, SHOULD, SOULD NOT y MAY. Para que la traducción sea lo más fiel
posible, se traducira siempre MUST como el verbo deber en presente (DEBE,
DEBEN), SHOULD como el verbo deber en condicional (DEBERÍA, DEBERÍAN) y el verbo
MAY como el verbo PODER.

[RFC 2119]: http://www.ietf.org/rfc/rfc2119.txt


## 1. Visión general

Este PSR describe una especificación para la [autocarga][] de clases desde rutas
de archivos. Es completamente interoperable, y se puede utilizar en conjunto con
cualquier otra especificación de autocarga, incluyendo [PSR-0][]. Además, este
PSR describe donde colocar los archivos que serán autocargados de acuerdo a la
especificación.

## 2. Especificación

1. El termino "clase" se refiere a clases, interfaces, traits, y otras
estructuras similares.

2. Un nombre completo de clase tiene la siguiente forma:

        \<NombreDelEspacioDeNombres>(\<SubNombreDelEspacioDeNombres>)*\<NombreDeClase>

    1. El nombre completo de clase DEBE tener un espacio de nombre inicial
       también conocido como "vendor namespace".

    2. El nombre completo de clase PUEDE tener uno o mas sub-espacios de nombres.

    3. El nombre completo de clase DEBE terminar con un nombre de clase.

    4. Los guiones bajos no tienen significado especial en ningúna parte del
       nombre completo de clase.

    5. Los caracteres alfabéticos en el nombre completo de clase PUEDEN ser
       cualquier combinación de minusculas y mayusculas.

    6. Todas los nombres de clases DEBEN ser hacer referencia distinguiendo
       minusculas y mayusculas.

3. Cuando se cargue un archivo que corresponda a un nombre completo de clase...

    1. Una serie continua de uno o mas nombres de espacio iniciales y
       subsecuentes, sin incluir el separador del espacio de nombres,
       el nombre completo de clase (un "prefijo de espacio de nombres")
       corresponde al menos a un "directorio base".

    2. Una serie continua de sub-espacios de nombre después del "prefijo del
       espacio de nombres" corresponde a un subdirectorio con un "directorio
       base", en el cual los separadores del espacio de nombres representan los
       separadores del directorio. El nombre del sub-directorio DEBE coincidir
       con los nombres de los sub-espacios de nombres.

    3. El nombre de clase corresponde al nombre del archivo terminando
       en '.php'. El nombre del archivo DEBE coincidir con el nombre de la clase
       en terminación.

4. La implementación de la autogarga NO DEBE lanzar excepciones, NO DEBE lanzar
   errores de ningún nivel, y NO DEBERIA retornar un valor.

## 3. Ejemplos

La siguiente tabla muestra la ruta de archivo correspondiente para cada nombre
completo de clase, prefijo de espacios de nombres, y directorios base.

| Nombre completo de clase      | Prefijo de espacios de nombres | Directorio base          | Ruta de archivo resultante
| ----------------------------- |--------------------------------|--------------------------|-------------------------------------------
| \Acme\Log\Writer\File_Writer  | Acme\Log\Writer                | ./acme-log-writer/lib/   | ./acme-log-writer/lib/File_Writer.php
| \Aura\Web\Response\Status     | Aura\Web                       | /path/to/aura-web/src/   | /path/to/aura-web/src/Response/Status.php
| \Symfony\Core\Request         | Symfony\Core                   | ./vendor/Symfony/Core/   | ./vendor/Symfony/Core/Request.php
| \Zend\Acl                     | Zend                           | /usr/includes/Zend/      | /usr/includes/Zend/Acl.php

Para ejemplos de implementacion de autocarga conforme a la especificación,
por favor vea el [archivo de ejemplo][]. Los ejemplos de la implementación NO
DEBEN considerarse como parte de la especificación y PUEDEN cambiar en cualquier
momento.

[autocarga]: http://php.net/autoload
[PSR-0]: https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-0.md
[archivo de ejemplo]: https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-4-autoloader-examples.md
