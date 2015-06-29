---
layout: php/page-with-content
title:  "Herramientas"
date:   2015-04-14 10:44:15
categories: php
section: php section
section_name: php
icon: gear
menu_order: 3
---


PHP tiene una serie de herramientas que se utilizan para la validación de las
recomendaciones de programación

# PEAR

**PHP Extension and Application Repository** es un repositorio de código de PHP
que se utiliza para promover el re-uso de código en funciónes comúnes. **PEAR
package manager** viene por defecto al instalar PHP.


# PHP Code Sniffer

**PHP Code Sniffer** es un conjunto de dos scripts de PHP, el script `phpcs`
verifica archivos PHP, CSS y Javascript para detectar violaciones de código de
un estándar de codificación definido, y el segundo script `phpcbf` corrige de
manera automática las violaciones de código al estándar de codificación.
**PHP Code Sniffer** es una herramienta de desarrollo esencial que asegura que
el código permanezca limpio y consistente.

# Requerimientos

**PHP Code Sniffer** requiere utilizar la versión 5.1.2 o mayor de PHP.

# Instalación
La manera mas fácil de comenzar con PHP Code Sniffer es descargando los archivos
[PHAR] de cada script:

```
curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
php phpcs.phar -h

curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
php phpcbf.phar -h

```

Si es posible utilizar PEAR, puede instalar PHP Code Sniffer utilizando el instalador de PEAR. Esto hará los comandos `phpcs` y `phpcbf` disponibles inmediatamente para su uso. Para instalar PHP Code Sniffer utilizando el instalador de PEAR, primero asegurarnos de tener instalado [PEAR] para ejecutar el siguiente comando:

```
pear install PHP_CodeSniffer
```



[PHAR]: http://php.net/manual/en/intro.phar.php
[PEAR]: http://pear.php.net/manual/en/installation.getting.php
