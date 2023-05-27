<%-- 
    Document   : edit
    Created on : 8/05/2023, 8:42:22 p. m.
    Author     : APRENDIZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>EDITAR</h1>
        <div class="container">    
            <div class col-lg-6">
                <form action="edit">
                <label for="id">Identidicación</label>
                <input type="text" id="id" name="txtdoc">
                <br>
                <label for="NumDoc">Documento</label>
                <input type="text" id="Docu" name="txtdoc">
                <br>
                 <label for="nombres">Nombres</label>
                <input type="text" id="Nombrea" name="txtnom">
                 <br>
                 
                 <label for="Apellido">Apellidos</label>
                <input type="text" id="Apellidoa" name="txtape">

                

                 <br>

                <label for="correo">Correo electronico</label>
                <input type="text" id="correoa" name="txtcorreo">

                 <br>

                <label for="telefono">Telefono</label>
                <input type="number" id="Numcontacto" name="txtcon">
                
                <input class="btn-btn-primary" type="submit" name="accion" value="ActualizarA">

                

               </form>
    </body>
</html>
