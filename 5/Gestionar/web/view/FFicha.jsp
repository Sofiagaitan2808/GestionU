<%-- 
    Document   : FLibros
    Created on : 15/05/2023, 6:34:11 p. m.
    Author     : APRENDIZ
--%>


<%@page import="model.Aprendiz"%>
<%@page import="modeldao.AprendizDao"%>
<%@page import="java.util.List"%>
<%@page import="model.Programa"%>
<%@page import="modeldao.ProgramaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Agregar Ficha!</h1>
         <div class="container">    
            <div class="col-lg-6">
                <form action="ControladorAprendiz">
                <label for="Codficha">Código de la ficha</label>
                <input type="text" id="from-control" name="txtCodficha">

                <br>
                 <label for="numerodeaprendices">Número de aprendices</label>
                <input type="text" id="from-control" name="txtnumeroaprendices">
                <div class="from-group">
                    <label Nombre Programa :></label>
                    
                        <option value="0"></option>
                        <%ProgramaDao pro = new ProgramaDao();
                        List<Programa> lista = pro.listadopro();
                        %>
                        <% for (Programa li:lista){ %>
                        <option value="<%=li.getCodprograma()%>"><%=li.getNomprograma()%></option>
                        <%}<%>
                    
                </div>
                 <br>
                 
                 <label for="doapre">Código del aprendiz</label>
                <input type="text" id="from-control" name="txtdoaprez">
                <div class="from-group">
                    <label Nombre Aprenndiz :></label>
                    
                    <div class="form-control">
                <label Nombre aprendiz></label>
                <select name="txtCodAp" id="codap">
                <option value="">Seleccione un Aprendiz</option>
                <%Aprendiz ape = new Aprendiz();
                List<Aprendiz> listar = ape.listadoA();
                     
                %>
                <%
               for(Aprendiz li:listar){%>
                <option value="<%=li.getId()%>"><%=li.getApellidoa()%></option>
                <%}%>
            </select>    
            </div>
                 <br>
                
                <input class="btn-btn-primary" type="submit" name="accion" value="RegistrarF">

                

               </form>
            </div>
    </body>
</html>
