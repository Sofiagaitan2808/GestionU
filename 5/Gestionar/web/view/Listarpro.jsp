<%-- 
    Document   : Listarpro
    Created on : 10/05/2023, 6:34:18 p. m.
    Author     : APRENDIZ
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
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
        <h1>Programas registrados en el sistema</h1>
         <table> 
            <thead>
            <tr> 
                <th class="text-center">CODIGO DEL PROGRAMA</th> 
                <th class="text-center">NOMBRE DEL PROGRAMA</th>      
            </tr>
            </thead> 
            
            <% 
            ProgramaDao pdao =new ProgramaDao(); 
            List <Programa>lista=pdao.listadopro(); 
            Iterator<Programa>it=lista.iterator();  
            Programa pro = null;
            while (it.hasNext()){
                pro=it.next(); 
                
            
            
            %>
        <tbody> 
                <tr>
            <td class="text-center"><%=pro.getCodprograma()%></td>
            <td class="text-center"><%=pro.getNomprograma()%></td>
            
            
            <td class ="text-center" >
                 
                <<a class="btn-danger" href="../ControladorPrograma?accion=eliminar&id=<%=pro.getCodprograma()%>">ELIMINAR</a> 
                <a class="btn-danger" href="../ControladorPrograma?accion=edit&id=<%=pro.getCodprograma()%>">EDITAR</a>
           
                
                
            </td>
            </tr> 
            <% } %>
            </tbody>  
    </body>
</html>
