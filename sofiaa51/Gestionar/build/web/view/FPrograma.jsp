<%-- 
    Document   : FPrograma
    Created on : 27/04/2023, 7:33:34 p. m.
    Author     : APRENDIZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body> 
       
       
    </body> 
      <h1 align="center">REGISTRAR PROGRAMA</h1> 
         <div class="container"></div>
        <div class="col-lg-6"></div>  
        <form action="../ControladorPrograma">
            <label for="Codprograma">Codigo del programa</label>
            <input class="form-control" type="number" name="txtcodpro">
            <br>
             
            <label for="Nomprograma">Nombre del programa</label>
            <input class="form-control" type="txt" name="txtnombrepro">
            <br>  
            <input class="btn btn-danger" type="submit" name="accion" value="Agregarp"><br>
           
   </form> 
</html>
