package com.trust.ejercicio4.model;

public class FigurasGeometricasModel {
    public String figura;
    public double valor1;
    public double valor2;
    public double valor3;
    public double valor4;
    
    public FigurasGeometricasModel(String Figura, double Valor1, double Valor2, 
            double Valor3, double Valor4){
        this.figura = Figura;
        this.valor1 = Valor1;
        this.valor2 = Valor2;
        this.valor3 = Valor3;
        this.valor4 = Valor4;
    }
    
    public double AreaFigura(){
        double resultado = 0.0;
            switch (figura){
                case "1": resultado = valor1*valor1;
                    break;
                case "2": resultado = valor1*valor2;
                    break;
                case "3": resultado = valor1*valor2/2;
                    break;
                case "4": resultado = valor1*valor2/2;
                    break;
                default: resultado = (valor1+valor3)*valor2/2;
                    break;      
            }
        return resultado;
    }
    
    public double PerimetroFigura(){
        double resultado = 0.0;
            switch (figura){
                case "1": resultado = valor1*4;
                    break;
                case "2": resultado = (valor1*2)+(valor2*2);
                    break;
                case "3": resultado = valor1+valor2+valor3;
                    break;
                case "4": resultado = (valor3*2)+(valor4*2);
                    break;
                default: resultado = valor1+valor2+valor3+valor4;
                    break;      
            }
        return resultado;
    }
    
}
