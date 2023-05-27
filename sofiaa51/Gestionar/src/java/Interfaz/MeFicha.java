/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaz;

import java.util.List;
import model.Ficha;

/**
 *
 * @author APRENDIZ
 */
public interface MeFicha {
    public Ficha list(int codficha); 
    public List listadoF(); 
    public boolean resgistrarFicha(Ficha fi);
    public boolean actualizarFicha(Ficha fi);
    public boolean eliminarFicha(int codficha);
}
