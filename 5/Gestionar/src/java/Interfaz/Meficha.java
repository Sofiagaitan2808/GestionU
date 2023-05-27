/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaz;

import java.util.List;
import model.Ficha;

public interface Meficha {
  
    public Ficha list (int cod);
    public List listaFichas();
    public boolean registrarficha (Ficha fi);
    public boolean actualizarficha(Ficha fi);
    public boolean eliminarficha (int cod);
}
