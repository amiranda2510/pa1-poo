package com.trust.ejercicio1.model; 

public class TrapecioModel { 
    
    public double areaRef = 240;
    public double baseMenor = 11;
    public double baseMayor = 15;
    public double ladoDM = 1.5;
    
    public double altura;
    public double areaTriangulo;
    public double perimetro;
    
    public void calcular() {
        
        this.altura = (2 * areaRef) / (baseMayor + baseMenor);
        
        this.areaTriangulo = (ladoDM * altura) / 2;
        
        double ladoDA = Math.sqrt(Math.pow(ladoDM, 2) + Math.pow(altura, 2));
        
        double baseRestante = baseMayor - baseMenor - ladoDM;
        
        double ladoBC = Math.sqrt(Math.pow(baseRestante, 2) + Math.pow(altura, 2));
        
        this.perimetro = baseMayor + baseMenor + ladoDA + ladoBC;
    }
}