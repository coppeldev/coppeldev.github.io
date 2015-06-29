---
layout: java/page-with-content
title:  "Estandar de programación Coppel para Java"
menu_title: "Estandar Java"
date:   2015-04-14 10:44:15
categories: java standard
menu_order: 5
version: 1.0
---

<div id="toc"></div>

## Archivos
El nombre del archivo de código fuente consiste del nombre de la clase de nivel más alto, es **case-sensitive** más la extensión .java (normalmente el IDE se encargará de agregar el .java al crear una clase mediante éste).

Los archivos están codificados en UTF-8. Para configurar ésto, hay que modificar el archivo netbeans.config, el cual se encuentra en la ruta:
path_netbeans/NetBeansx.x/etc/netbeans.config
en la línea netbeans_default_options agregar la instrucción -J-Dfile.encoding=UTF-8.

## Líneas

Los salto de líneas permitidos en los archivos fuente son los saltos de línea estilo Unix.

Una sentencia por línea. Cada sentencia debe estar seguida por un salto de línea.

Los programadores tienen la libertad de elegir cualquiera de los dos límites, 80 o 100 caracteres.

Dentro de ninguna línea debe escribirse con tabuladores, sólo espacios en blanco (ASCII 0x20).

Para algún carácter que tenga una secuencia de escape especial (\b, \t, \n, \f, \r, \", \' y \\\\), esa secuencia es usada en lugar de su correspondiente escape octal o Unicode.

## Indentación

Cada vez que un nuevo bloque o construcción de bloque es abierta, la indentación se incrementa en cuatro espacios. Cuando el bloque termine, la indentación se regresa al nivel precio de indentación. El nivel de indentación aplica para el código y para los comentarios a través del bloque.

## Estructura de Archivo

Un archivo fuente consiste de, **en orden**:
1. Licencia o derechos de autor
2. Sentencia *package*
3. Sentencia(s) *import*
4. Exactamente una clase de alto nivel

**Exactamente una línea en blanco** separa cada sección que esté presente.

En la sección de Licencia o derechos de autor, va la siguiente leyenda:
Copyright (c) 20XX, Coppel y/o sus afiliados. Todos los derechos reservados.

Sentencias package e import

La sentencia package no está delimitada. El límite de columna (Límite de columna 80 o 100) no aplica para sentencias de paquete.

Los nombres de paquete son todos en minúscula, con palabras consecutivas simplemente concatenadas juntas (sin guiones bajos). Por ejemplo, com.example.deepspace, no com.example.deepSpace o tampoco com.example.deep_space.

**Importaciones wildcard**(ej. import java.util.&#42;), estáticos o cual sea el modo, **no se usan**.

Las sentencias import no se delimitan. El límite de columna (Límite de columna 80 o 100) no aplica para sentencias de paquete.

Las sentencias import están divididas en los siguientes grupos, en este orden, donde cada grupo está separado por una sola línea en blanco:
1. Todos los importes estáticos en un solo grupo
2. Importes com.coppel o equivalentes
3. Importes de proveedores externos, un grupo por paquete de alto nivel, en orden ASCII, por ejemplo: android, com, junit, org, sun
4. Importes *java*
5. Importes *javax*

## Clases, atributos y métodos
Exactamente una declaración de nivel alto. Cada clase de nivel alto, en su propio archivo.

Los nombres de clase están escritos en _UpperCamelCase_ (Mayúsculas/Minúsculas Camello).

Los nombres de clase son normalmente sustantivos o frase descriptiva. Por ejemplo, _Articulo_ o _NotasRopa_. Nombres de interfaces pueden ser también sustantivos o frases descriptivas( por ejemplo List), pero puede algunas veces ser un adjetivo o frases adjetivas(por ejemplo Readable).

Clases de prueba son llamadas empezando con el nombre de la clase que prueban, y terminando con Test (Prueba). Por ejemplo _HashTest_ (HashPrueba) o _HashIntegrationTest_ (HashIntegracionPrueba o HashPruebaIntegracion).

Es importante que cada clase ordene sus miembros **de forma lógica**, el cual su mantenedor puede explicar si se le solicita. Por ejemplo, métodos nuevos no son habitualmente sólo añadidos al final de la clase, porque eso se presta a "adición cronológica por fecha", lo cual no es ordenamiento lógico.
Cuando una clase tiene múltiples constructores, o múltiples métodos con el mismo nombre, estos aparecen secuencialmente, sin miembros intervinientes.

Modificadores de clase y miembros, cuando estén presentes, aparecen en el orden recomendado por la Especificación de Lenguaje Java:

``` java
public protected private abstract static final transient volatile synchronized native strictfp
```

Los nombres de los métodos son escritos en _lowerCamelCase_ (Minúsculas/Mayúsculas Camello).

Los nombres de los métodos son habitualmente verbos u oración simple. Por ejemplo sendMessage(enviarMensaje) o stop(parar).

Los nombres de parámetros son escritos en _lowerCamelCase_. Nombres de parámetros de un solo carácter deben ser evadidos.

Los nombres de variables locales son escritos en _lowerCamelCase_, y pueden ser abreviadas de forma más liberal que nombres de otros tipos. Sin embargo, nombres de un solo carácter deben ser evadidos, exceptuando para temporales y variables de ciclo. Aún cuando sean final e inmutables, las variables locales no son consideradas constantes, y no deben utilizarse como tal.

Las anotaciones que aplican a una clase, método o constructor aparece inmediatamente después de la documentación del bloque, y cada anotación es listada en una línea propia (es decir, una anotación por línea). Ejemplo:

```java
@Override
@Nullable
public String traerNombreSiExiste() { ... }
```
**Excepción:** Una sola anotación sin parámetros _puede_ aparecer junto con la firma en la primer línea, por ejemplo:

```java
@Override public int hashCode() { ... }
```

Los identificadores sólo utilizan letras y dígitos ASCII, y en los dos casos expuestos más abajo, guiones bajos. Por lo tanto cada nombre identificador válido es igualado a la expresión regular **/w+** .

En Java, prefijos o sufijos especiales, como los vistos en los ejemplos nombre_, mNombre, s_nombre y kNombre, **no** son usados.

Los nombres de constantes usan _CONSTANT_CASE_: letras mayúsculas, con dos palabras separadas por guiones bajos.

Nombres de campo no constantes (estático o no) están escritos en _lowerCamelCase_. Estos nombres son habitualmente sustantivos o una descripción simple. Por ejemplo valoresCalculados o index.

Cada variable de tipo (genéricos) es llamado en uno de estos estilos:
 - Una sola letra mayúscula, opcionalmente seguido por un numeral (tal como E, T, X, T2)
 - Un nombre en la forma usada para clases , seguido por la letra T mayúscula (ejemplos: RequestT, FooBarT).

## Estructuras de control
Las llaves son usadas en las sentencias _if_, _else_, _for_, _do_ y _while_, aún cuando el cuerpo esté vacío o contenga una sola sentencia.

Las llaves siguen el estilo de Kernighan y Ritchie (llaves Egipcias) para bloques no vacíos y construcción de bloque:
- Sin salto de línea antes de la llave de apertura.
- Salto de línea después de la llave de apertura.
- Salto de línea antes de la llave de cierre.
- Salto de línea después de la llave de cierre si esa llave termina una declaración o el cuerpo de un método, constructor o clase _llamada_ . Por ejemplo , no hay un salto de línea después de la llave si es seguido por else o una coma.

Ejemplo:
```java
return new MyClass() {
  @Override public void method() {
      if (condition()) {
        try {
          something();
      } catch (ProblemException e) {
          recover();
      }
    }
  }
};
```

A continuación, ejemplos para el resto de las estructuras de control

```java

//Escritura correcta de un ciclo for
for (int i = 0; i < 10; i++) {
    //Bloque de código
}

// Escritura correcta de un ciclo while
while (i > 0) {
    //Bloque de código
}

// Escritura correcta de un ciclo do-while
do {
    //Bloque de código
} while (i > 0);

//Escritura correcta de un ciclo foreach
for (Object objeto : listaObject) {
    //Bloque de código
}

//Escritura correcta de un bloque switch
switch (opc) {
    case 1:
        break;
    default:
        break;
}

```

## Sobrecarga, excepciones y estáticos
@Override: siempre usada.
Un método es marcado con la anotación @Override siempre que sea legal. Esto incluye un método de clase sobrecargando un método de la súper clase, un método de clase implementando un método de interfaz, y un método de interfaz volviendo a especificar un método de súper interfaz.

**Excepción:** @Override puede ser omitida cuando el método padre es @Deprecated.

Cachado de excepciones: no ignorado. Excepto abajo donde se indica, es muy raro que se considere correcto no hacer algo al respecto a una excepción cachada (respuestas típicas son guardar en el log, o si es considerada "imposible", relanzarla como un AssertionError).

Cuando realmente es apropiado no tomar acción alguna en una bloque catch, la razón es justificada y explicada en un comentario.

``` java
try {
  int i = Integer.parseInt(respuesta);
  return manejarRespuestaNumerica(i);
} catch (NumberFormatException ok) {
  // no es numérica; eso está bien, sólo continua
}
return manejarRespuestaTexto(respuesta);
```

Miembros estáticos: calificados usando la clase.
Cuando una referencia a un miembro estático de una clase debe ser calificado, es calificado con el nombre de la clase, no con una referencia o expresión a un tipo de esa clase.

``` java
Foo aFoo = ...;
Foo.unMetodoEstatico(); // bien
aFoo.unMetodoEstatico(); // mal
algoQueCedeUnFoo().unMetodoEstatico(); // muy mal
```

## JavaDoc
El formateo _básico_ de bloques es visto en este ejemplo:

```java
/**
 * Múltiples líneas de texto Javadoc son escritas aquí
 * envueltas normalmente...
 */
public int metodo(String param) { ...
}
```

Dentro de ese bloque debe estar correctamente descrito el método que se esta documentando, el nivel de detalle del funcionamiento varía de acuerdo a la complejidad del método, no se espera una descripción línea por línea del cuerpo del método, pero sí aclarar cómo funciona, qué parámetros recibe y qué retorna en caso de que retorne algún valor; si no, qué afecta, qué tablas de qué base de datos o qué archivos, etc.



Una línea en blanco- esto si, una línea conteniendo sólo el asterisco(&#42;) líder- aparece en medio de párrafos, y antes del grupo de "clausulas at" si están presentes. Cada párrafo menos el primero tiene &#60;p&#62; inmediatamente después de la primer palabra, sin espacio en blanco después.

Cualquiera de las clausulas at estándar que son usadas aparecen en el orden
``` java
@param, @return, @throws, @deprecated
```
y éstos cuatro tipos nunca aparecen con una descripción vacía. Cuando una clausula at no cabe en una sola línea, las líneas de continuación están indentadas a cuatro o más espacios de la posición del arroba (@).

En un mínimo, Javadoc está presente en toda clase pública o miembro protegida de dicha clase, con algunas excepciones discutidas abajo.

Otras clases y miembros aún tienen Javadoc a como sea _necesario_. Siempre que se usaría un comentario de implementación para definir el propósito general o comportamiento de una clase, método o campo, ese comentario es escrito en Javadoc (es más uniforme y accesible a las herramientas).

Javadoc es opcional para métodos "simples, obvios" como getFoo, en casos en donde _realmente_ y _ciertamente_ no queda más que decir que "Retorna Foo".

>**IMPORTANTE:** no es apropiado citar esta excepción para justificar omitir que un lector típico necesita saber. Por ejemplo, para un método llamado _obtenerNombreCanonico_, no omitir su documentación (con base que sólo dirá  _/&#42;&#42; Retorna el nombre canónico &#42;&#42;/_ ) si dicho lector típico puede no tener idea qué significa el termino "nombre canónico".

Si se realiza la sobrecarga de un método, además de especificarlo con la anotación @Override, documentar la nueva funcionalidad y la razón de la sobrecarga.

## Ejemplo
A continuación se muestra una clase estructurada y comentada con las reglas y especificaciones expuestas en este documento.

```java
/**
 * Copyright (c) 2015, Coppel y/o sus afiliados. Todos los derechos reservados.
 *
 */

package com.coppel.optimizaciondecodigo.logica;

import com.coppel.optimizaciondecodigo.entidades.CreditoCausas;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.LinkedList;
import java.util.List;
import java.util.Properties;

/**
 * Clase que crea, consulta, actualiza y elimina registros
 * de una tabla en una base de datos.
 * @author Edgar Ruiz
 */
public class CrudHandler {

    /**
     * Constructor simple de la clase.
    */
    public CrudHandler() {
    }

    /**
     * Método para dar de alta un registro en la tabla cat_creditocausas2
     * de la base de datos carteras.
     * @param creditoCausaJson registro a dar de alta en formato Json
     * @return un valor entero indicando si se insertó en la tabla o no.
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public final int insertarCreditoCausas(String creditoCausaJson) throws ClassNotFoundException, SQLException {
        CreditoCausas creditoCausas = null;
        int inserto = 0;
        String urlBd = null;
        String query = null;
        StringBuilder queryBuilder = null;
        Connection connection = null;
        Properties props = null;
        PreparedStatement preparedStatement = null;
        int elimino = 0;
        props = new Properties();
        queryBuilder = new StringBuilder();
        Class.forName("org.postgresql.Driver");
        urlBd = "jdbc:postgresql://10.44.64.190:5432/cartera";
        props.setProperty("user", "programacion");
        props.setProperty("password", "progs");
        connection = DriverManager.getConnection(urlBd, props);
        creditoCausas = new Gson().fromJson(creditoCausaJson, CreditoCausas.class);
        queryBuilder.append("INSERT INTO cat_creditocausas2(");
        queryBuilder.append("idu_causas, nom_causa, des_mensaje)");
        queryBuilder.append("VALUES (?, ?, ?);");
        query = queryBuilder.toString();
        preparedStatement = connection.prepareStatement(query);
        preparedStatement.setInt(1, creditoCausas.getIduCausas());
        preparedStatement.setString(2, creditoCausas.getNomCausa());
        preparedStatement.setString(3, creditoCausas.getDesMensaje());
        inserto = preparedStatement.executeUpdate();
        return inserto;
    }

    /**
     * Método para consultar la tabla cat_creditocausas2
     * de la base de datos carteras.
     * @return la información de la tabla en JSON.
     * @throws SQLException
     * @throws ClassNotFoundException
     */
    public final String consultarCreditoCausas() throws SQLException , ClassNotFoundException {
        String json = null;
        String urlBd = null;
        String query = null;
        StringBuilder queryBuilder = null;
        Connection connection = null;
        Properties props = null;
        Statement statement = null;
        ResultSet resultSet = null;
        List<CreditoCausas> lista = null;
        CreditoCausas creditoCausas = null;
        props = new Properties();
        lista = new LinkedList<>();
        queryBuilder = new StringBuilder();
        Class.forName("org.postgresql.Driver");
        urlBd = "jdbc:postgresql://10.44.64.190:5432/cartera";
        props.setProperty("user", "programacion");
        props.setProperty("password", "progs");
        connection = DriverManager.getConnection(urlBd, props);
        queryBuilder.append(" SELECT idu_causas, nom_causa, ");
        queryBuilder.append(" des_mensaje, fec_movimiento ");
        queryBuilder.append(" FROM cat_creditocausas2 ");
        query = queryBuilder.toString();
        statement = connection.createStatement();
        resultSet = statement.executeQuery(query);
        while (resultSet.next()) {
            creditoCausas = new CreditoCausas();
            creditoCausas.setIduCausas(resultSet.getInt("idu_causas"));
            creditoCausas.setNomCausa(resultSet.getString("nom_causa"));
            creditoCausas.setDesMensaje(resultSet.getString("des_mensaje"));
            creditoCausas.setFecMovimiento(resultSet.getString("fec_movimiento"));
            lista.add(creditoCausas);
            creditoCausas = null;
        }
        json = new Gson().toJson(lista);
        try {
            connection.close();
        } catch (SQLException ex) {
            System.out.println("Error al cerrar conexión: " + ex.getMessage());
        }
        try {
            statement.close();
        } catch (SQLException ex) {
            System.out.println("Error al cerrar statement: " + ex.getMessage());
        }
        try {
            resultSet.close();
        } catch (SQLException ex) {
            System.out.println("Error al cerrar resultset: " + ex.getMessage());
        }
        connection = null;
        urlBd = null;
        props = null;
        statement = null;
        resultSet = null;
        lista = null;
        return json;
    }

    /**
     * Actualiza la descripción de la causa indicada.
     * @param content un JSON con el id de la causa a cambiar y la nueva descripción
     * @return un entero que indica si se actualizó
     * @throws JsonSyntaxException
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public final int actualizarCausa(final String content) throws JsonSyntaxException , ClassNotFoundException , SQLException {
        CreditoCausas creditoCausas = null;
        String query = null;
        String urlBd = null;
        StringBuilder queryBuilder = null;
        Connection connection = null;
        Statement statement = null;
        Properties props = null;
        int actualizo = 0;
        queryBuilder = new StringBuilder();
        props = new Properties();
        creditoCausas = new Gson().fromJson(content, CreditoCausas.class);
        Class.forName("org.postgresql.Driver");
        urlBd = "jdbc:postgresql://10.44.64.190:5432/cartera";
        props.setProperty("user", "programacion");
        props.setProperty("password", "progs");
        connection = DriverManager.getConnection(urlBd, props);
        queryBuilder.append(" UPDATE cat_creditocausas2 ");
        queryBuilder.append(" SET  des_mensaje = ");
        queryBuilder.append("'").append(creditoCausas.getDesMensaje()).append("'");
        queryBuilder.append(" WHERE idu_causas = ");
        queryBuilder.append(creditoCausas.getIduCausas()).append(";");
        query = queryBuilder.toString();
        statement = connection.createStatement();
        actualizo = statement.executeUpdate(query);
        return actualizo;
    }

    /**
     * Método para eliminar un registro de la BD
     * de la tabla cat_creditocausas.
     * @param id el iducausas a consultar
     * @return un entero que indica si se eliminó o no el registro
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public final int eliminarCausa(final int id) throws ClassNotFoundException, SQLException {
        String urlBd = null;
        String query = null;
        StringBuilder queryBuilder = null;
        Connection connection = null;
        Properties props = null;
        Statement statement = null;
        int elimino = 0;
        props = new Properties();
        queryBuilder = new StringBuilder();
        Class.forName("org.postgresql.Driver");
        urlBd = "jdbc:postgresql://10.44.64.190:5432/cartera";
        props.setProperty("user", "programacion");
        props.setProperty("password", "progs");
        connection = DriverManager.getConnection(urlBd, props);
        queryBuilder.append(" DELETE FROM cat_creditocausas2 ");
        queryBuilder.append(" WHERE idu_causas = ").append(id).append(";");
        query = queryBuilder.toString();
        statement = connection.createStatement();
        elimino = statement.executeUpdate(query);
        try {
            connection.close();
        } catch (SQLException ex) {
            System.out.println("Error al cerrar conexión: " + ex.getMessage());
        }
        try {
            statement.close();
        } catch (SQLException ex) {
            System.out.println("Error al cerrar statement: " + ex.getMessage());
        }
        connection = null;
        urlBd = null;
        props = null;
        statement = null;
        return elimino;
    }

}

```
