<%-- 
    Document   : Resultados
    Created on : 6/05/2020, 04:15:08 PM
    Author     : ramon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados formulario</title>
        
    </head>
    <body>
        <h1>Resultados mostrados en un jsp</h1>
        
            <table width="200" id="enfasis-columna">
                <caption>
                    Formulario Registro de Datos
                </caption>
                <tr>
                    <td class="columna">
                        Name: 
                    </td>
                    <td>
                        <input class="default" type="text" name="name" value="${name}"
                               value="Escribir usuario" onfocus="this.select()"/>
                    </td>
                </tr>
                <tr>
                    <td class="columna">
                        Last Name: 
                    </td>
                    <td>
                        <input class="default" type="text" name="lastname" value="${lastname}"
                               onfocus="this.select()"/>
                    </td>
                </tr>
                <tr>
                   <td class="columna">
                        Age:  
                    </td>
                    <td>
                        <input class="default" type="text" name="age" value="${age}"
                               onfocus="this.select()"/>
                    </td>
                </tr>
                <tr>
                    <td class="columna">
                        Country:  
                    </td>
                    <td>
                        <input class="default" type="text" name="country" value="country"
                               onfocus="this.select()"/>
                    </td>
                </tr>
                
                
                <tr style="text-align: center">
                    
                    <td>
                        <a href="http://localhost:8080/ManejoFormulariosHTML/"  class="default">Regresar</a> 
                    </td>
                </tr>
            </table>
    </body>
</html>
