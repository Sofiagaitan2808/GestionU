<%-- 
    Document   : ListarA
    Created on : 3/05/2023, 7:19:28 p. m.
    Author     : APRENDIZ
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Aprendiz"%>
<%@page import="modeldao.AprendizDao"%>
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
        <h1>APRENDICES REGISTRADOS EN EL SISTEMA</h1> 
        <table> 
            <thead>
            <tr> 
                <th class="text-center">ID</th> 
                <th class="text-center">DOCUMENTO</th> 
                <th class="text-center">NOMBRE</th> 
                <th class="text-center">APELLIDO</th> 
                <th class="text-center">CORREO</th>
                <th class="text-center">CELULAR</th>     
            </tr>
            </thead> 
            <% 
            AprendizDao dao =new AprendizDao(); 
            List <Aprendiz>listar=dao.listadoA(); 
            Iterator<Aprendiz>it=listar.iterator();  
            Aprendiz usu = null;
            while (it.hasNext()){
                usu=it.next(); 
                
            
            
            %> 
            <tbody> 
                <tr>
            <td class="text-center"><%=usu.getId()%></td>
            <td class="text-center"><%=usu.getDocu()%></td>
            <td class="text-center"><%=usu.getNombrea()%></td> 
            <td class="text-center"><%=usu.getCorreoa()%></td> 
            <td class="text-center"><%=usu.getNumcontacto()%></td> 
            
            <td class ="text-center" >
                <a class="btn btn-warning" href="">EDITAR</a>  
                <a class="btn-danger" href="../ControladorAprendiz?accion=eliminar&id=<%=usu.getId()%>">ELIMINAR</a> 
                <a class="btn-danger" href="../ControladorAprendiz?accion=edit&id=<%=usu.getId()%>">EDITAR</a>
           
                
                
            </td>
            </tr> 
            <% } %>
            </tbody>  
        </table>
    </div>
   </body>
</html>
