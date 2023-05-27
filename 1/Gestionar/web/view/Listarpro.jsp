<%-- 
    Document   : ListarP
    Created on : 4/05/2023, 6:45:11 p. m.
    Author     : APRENDIZ
--%>

<%@page import="java.util.Iterator"%>
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
        <div class="container"> 
        <h1>PROGRAMAS REGISTRADOS EN EL SISTEMA</h1> 
        <table> 
            <thead>
            <tr> 
                <th class="text-center">Codigo del programa</th> 
                <th class="text-center">Nombre del programa</th> 
                   
            </tr>
            </thead> 
            <% 
            ProgramaDao dao =new ProgramaDao(); 
            List <Programa>listar=dao.listadopro(); 
            Iterator<Programa>it=listar.iterator();  
            Programa pro = null;
            while (it.hasNext()){
                pro=it.next(); 
                
            
            
            %> 
            <tbody> 
                <tr>
            <td class="text-center"><%=pro.getCodprograma()%></td>
            <td class="text-center"><%=pro.getNomprograma()%></td> 
            
            <td class ="text-center" >
                <a class="btn btn-warning" href="">EDITAR</a>  
                <a class="btn-danger" href="">ELIMINAR</a> 
           
                
                
            </td>
            </tr> 
            <% } %>
            </tbody>  
        </table>
    </div>
    </body>
</html>
