/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trust.ejercicio5.model;

public class TeatroModel {
    // atributos
    public String perfil;
    public int cantEntradas;
    public String dia;
    
    // constructores
    
    public TeatroModel(String Perfil, int CantEntradas, String Dia) {
        
        this.perfil = Perfil;
        this.cantEntradas = CantEntradas;
        this.dia = Dia;
    }
    
    public double obtenerPrecioBase() {
        switch (perfil) {
            case "NINO": return 150;
            case "ADOLESCENTE": return 180;
            case "ADULTO": return 220;
            case "MAYOR": return 200;
            default: return 0;
        }
        
    }
    
    public String obtenerRangoEdad() {
        switch (perfil) {
            case "NINO": return "Menor de 8 años";
            case "ADOLESCENTE": return "8 a 12 años";
            case "ADULTO": return "13 a 59 años";
            case "MAYOR": return "60 años a más";
            default: return "";
        }
    }
    
    public boolean esFinDeSemana() {
        return dia.equals("SABADO") || dia.equals("DOMINGO");
    }
    
    public double obtenerDescuento() {
        boolean finSemana = esFinDeSemana();

        switch (perfil) {
            case "NINO":
                return finSemana ? 0.20 : 0.35;
            case "ADOLESCENTE":
                return finSemana ? 0.15 : 0.25;
            case "ADULTO":
                return finSemana ? 0.05 : 0.15;
            case "MAYOR":
                return finSemana ? 0.30 : 0.50;
            default:
                return 0;
        }
    }
    
    public double calcularTotal() {
        double precioBase = obtenerPrecioBase();
        double subtotal = precioBase * cantEntradas;
        double descuento = obtenerDescuento();

        return subtotal - (subtotal * descuento);
    }
}
