/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modeldao;

import Interfaz.MeFicha;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import model.Ficha;


/**
 *
 * @author APRENDIZ
 */
public class FichaDao implements MeFicha{

    Conexion cn = new Conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        Ficha fi= new Ficha();
    
    @Override
    public Ficha list(int codficha) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List listadoF() {
        ArrayList<Ficha> lista = new ArrayList<Ficha>(); 
        String sql ="select * from ficha ";  
          try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);  
            rs=ps.executeQuery(); 
            while(rs.next())
            {
            Ficha fi =new Ficha(); 
            fi.setCodficha(rs.getInt("codficha"));
            fi.setCantiaprendices(rs.getInt("cantiaprendices"));
            fi.setCodprograma(rs.getInt("codprograma"));
            fi.setDoapre(rs.getInt("doapre")); 
            
            lista.add(fi);
            
            }
                   
        }catch(Exception e)
        {
            
        }
        return lista;
    }

    @Override
    public boolean resgistrarFicha(Ficha fi) {
        String sql="insert into ficha(codficha, cantiaprendices, codprograma, doapre)values('"+fi.getCodficha()+"','"+fi.getCantiaprendices()+"','"+fi.getCodprograma()+"','"+fi.getDoapre()+"')";
    try{
         con=cn.getConnection(); 
        ps=con.prepareStatement(sql); 
        ps.executeUpdate(); 
 
        JOptionPane.showMessageDialog(null, "Ficha registrada");
        
        }catch(Exception e) 
        {
            JOptionPane.showMessageDialog(null, "Ficha no registrada" +e.getMessage());
        }
         return false;
    }

    @Override
    public boolean actualizarFicha(Ficha fi) {
     String sql="insert into Ficha(codficha, cantiaprendices, codprograma, doapre)values('"+fi.getCodficha()+"','"+fi.getCantiaprendices()+"','"+fi.getCodprograma()+"','"+fi.getDoapre()+"')";   
    try{
            con=cn.getConnection(); 
            ps=con.prepareStatement(sql); 
            ps.executeUpdate(); 
        JOptionPane.showMessageDialog(null, "Ficha actualizada");
        
        }catch(Exception e) 
        {
            JOptionPane.showMessageDialog(null, "Ficha no actualizada" +e.getMessage());
        }
        return false;    
    }

    @Override
    public boolean eliminarFicha(int codficha) {
        String sql="delete from ficha where codficha="+codficha;
        try {
            con =cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        JOptionPane.showMessageDialog(null, "Ficha eliminada");
        
        }catch(Exception e) 
        {
            
        }
        return false;
        }
    }
    
