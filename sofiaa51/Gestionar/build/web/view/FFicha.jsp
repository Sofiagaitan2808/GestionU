<%-- 
    Document   : Ficha
    Created on : 24/05/2023, 7:31:02 p. m.
    Author     : APRENDIZ
--%>

<%@page import="model.Aprendiz"%>
<%@page import="modeldao.AprendizDao"%>
<%@page import="model.Programa"%>
<%@page import="java.util.List"%>
<%@page import="modeldao.ProgramaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <h1>REGISTRAR FICHA</h1>
          
          <form  action="../ControladorFicha">
              <label>Codigo de la ficha</label>
                  <input type="number" name="txtcodficha">   
              <label>Numero de aprendices</label>
                  <input type="number" name="txtcant"
              <label> Nombre Programa :</label>
                  <select name="txtcoprograma" class="custom-select">
              
                      <option value="0"></option>  
                      <% ProgramaDao pro = new ProgramaDao();
                      List<Programa> lista = pro.listadopro(); %>
                      <% for(Programa li:lista) {%>
                      <option value="<%=li.getCodprograma()%>"><%=li.getNomprograma()%></option>
                  <% } %>
                  </select>
                  
                  <label> Nombre Aprendiz :</label>
                  <select name="txtaprendiz" class="custom-select">
                      <option value="0"></option>  
                      <% AprendizDao ape = new AprendizDao();
                      List<Aprendiz> list = ape.listadoA();%>
                      <% for(Aprendiz li:list) {%>
                      <option value="<%=li.getId()%>"><%=li.getNombrea()%></option>
                  <% } %>
                  </select>
              <input class="btn btn-danger" type="submit" name="accion" value="Agregarf"><br>
              
              
          </form>
    </body>
</html>
