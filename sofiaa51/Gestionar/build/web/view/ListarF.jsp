<%-- 
    Document   : ListarF
    Created on : 24/05/2023, 7:36:28 p. m.
    Author     : APRENDIZ
--%>

<%@page import="java.util.Iterator"%>
<%@page import="model.Ficha"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="modeldao.FichaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Listar</h1> 
        
    
    <div class="container"> 
        <h1>Número de fichas registradas</h1> 
        <table> 
            <thead>
            <tr> 
                <th class="text-center">CODIGO</th> 
                <th class="text-center">NUMERO DE APRENDICES</th> 
                <th class="text-center">NOMBRE DEL PROGRAMA</th> 
                <th class="text-center">NOMBRE DEL APRENDIZ</th>    
            </tr>
            </thead> 
            <% 
            FichaDao fdao =new FichaDao(); 
            List <Ficha>listar=fdao.listadoF(); 
            Iterator<Ficha>it=listar.iterator();  
            Ficha fic = null;
            while (it.hasNext()){
                fic=it.next(); 
                
            
            
            %> 
            <tbody> 
                <tr>
            <td class="text-center"><%=fic.getCodficha()%></td>
            <td class="text-center"><%=fic.getCantiaprendices()%></td>
            <td class="text-center"><%=fic.getCodprograma()%></td> 
            <td class="text-center"><%=fic.getDoapre()%></td> 
            <td class ="text-center" >
                 
                <a class="btn-danger" href="ControladorFicha?accion=eliminar&id=<%=fic.getCodficha()%>">ELIMINAR</a> 
                <a class="btn-danger" href="ControladorFicha?accion=editar&id=<%=fic.getCodficha()%>">EDITAR</a>
           
                
                
            </td>
            </tr> 
            <% } %>
            </tbody>  
        </table>
    </div>
    </body>
</html>
