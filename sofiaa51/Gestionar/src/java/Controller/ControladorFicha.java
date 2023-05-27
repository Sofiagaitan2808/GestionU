/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Ficha;
import modeldao.FichaDao;

/**
 *
 * @author APRENDIZ
 */
@WebServlet(name = "ControladorFicha", urlPatterns = {"/ControladorFicha"})
public class ControladorFicha extends HttpServlet {
    String editar ="view/EditarF.jsp";
     String agregar ="view/FFicha.jsp";
      String listar ="view/ListarF.jsp";
      Ficha fi=new Ficha();
      FichaDao fdao = new FichaDao();
      int codficha; 
      
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorFicha</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorFicha at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        String acceso="";   
        String action=request.getParameter("accion"); 
        if (action.equalsIgnoreCase("listar")){
        acceso=listar;
        }else if (action.equalsIgnoreCase("agregar")){
        acceso=agregar; 
        }
        if (action.equalsIgnoreCase("Agregarf")){
        
            codficha=Integer.parseInt(request.getParameter("txtcodficha")); 
            int catidadaprendices=Integer.parseInt(request.getParameter("txtcant"));
            int codigoprograma=Integer.parseInt(request.getParameter("txtcoprograma"));
            int codigoaprendiz=Integer.parseInt(request.getParameter("txtaprendiz"));
            
              fi.setCodficha(codficha);
              fi.setCantiaprendices(catidadaprendices);
              fi.setCodprograma(codigoprograma);
              fi.setDoapre(codigoaprendiz);
              fdao.resgistrarFicha(fi);
              
              acceso=listar; 
              
            }else if(action.equalsIgnoreCase("eliminar")){
            codficha=Integer.parseInt(request.getParameter("codficha"));
            fi.setCodficha(codficha);
            fdao.eliminarFicha(codficha);
            acceso=listar;
            }else if(action.equalsIgnoreCase(editar)){
                acceso=editar;
                
            
        
        
    }
        RequestDispatcher view = request.getRequestDispatcher(acceso);
            view.forward(request, response);
    }
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
