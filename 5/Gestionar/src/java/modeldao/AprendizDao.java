/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modeldao;

import Interfaz.MeAprendiz;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import model.Aprendiz;

/**
 *
 * @author APRENDIZ
 */
public class AprendizDao implements MeAprendiz { 
    
    Conexion con= new Conexion(); 
    Connection cn;
    PreparedStatement ps; 
    ResultSet rs; 
    Aprendiz ape = new Aprendiz();
    
    @Override
    public Aprendiz list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List listadoA() {
        ArrayList<Aprendiz> lista = new ArrayList<Aprendiz>(); 
        String sql ="select * from aprendiz ";  
          try{
            cn=con.getConnection();
            ps=cn.prepareStatement(sql);  
            rs=ps.executeQuery(); 
            while(rs.next())
            {
            Aprendiz usu =new Aprendiz(); 
            usu.setId(rs.getInt("id"));
            usu.setDocu(rs.getInt("Docu")); 
            usu.setNombrea(rs.getString("Nombrea"));
            usu.setApellidoa(rs.getString("Apellidoa")); 
            usu.setCorreoa(rs.getString("Correoa")); 
            usu.setNumcontacto(rs.getInt("Numcontacto"));
            
            lista.add(usu);
            
            }
                
                
        }catch(Exception e)
        {
        }
        return lista;
      
    }

    @Override
    public boolean resgistrar(Aprendiz ap) {  
         String sql="insert into aprendiz(Docu,Nombrea,Apellidoa,Correoa,Numcontacto)values('"+ap.getDocu()+"','"+ap.getNombrea()+"','"+ap.getApellidoa()+"','"+ap.getCorreoa()+"','"+ap.getNumcontacto()+"')";
        try{
         cn=con.getConnection(); 
        ps=cn.prepareStatement(sql); 
        ps.executeUpdate(); 
        
        /*while(rs.next()){ 
            ape.setId(rs.getInt("id")); 
            ape.setDocuapre(rs.getInt("Docu")); 
            ape.setNombre(rs.getString("NombreA")); 
            ape.setApellido(rs.getString("ApellidoA"));  
            ape.setEmailA(rs.getString("EmailA")); 
            ape.setTeleapre(rs.getInt("TelefonoA"));*/
            
         JOptionPane.showMessageDialog(null,"Aprendiz registrado");
        
        }catch(Exception el) 
        {
        }
         return false;
    }

    @Override
    public boolean actualizar(Aprendiz ap) {
        String sql="insert into aprendiz(Docu,Nombrea,Apellidoa,Correoa,Numcontacto)values('"+ap.getDocu()+"','"+ap.getNombrea()+"','"+ap.getApellidoa()+"','"+ap.getCorreoa()+"','"+ap.getNumcontacto()+"')";   
    try{
            cn=con.getConnection(); 
            ps=cn.prepareStatement(sql); 
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Aprendiz actualizado");
        }catch(Exception e){
        
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from aprendiz where id="+id;
        try {
            cn =con.getConnection();
            ps=cn.prepareStatement(sql);
            ps.executeUpdate();
             JOptionPane.showMessageDialog(null,"Aprendiz eliminado");
        } catch (Exception e) {
        }
        return false;
        }
       
    }
    
    

