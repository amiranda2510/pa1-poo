/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trust.ejercicio2.model;

public class NumRomanosModel {
     public String decimalARomano(int num) {

        int[] valores = {1000,900,500,400,100,90,50,40,10,9,5,4,1};

        String[] romanos = {"M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"};

        String resultado = "";

        for (int i = 0; i < valores.length; i++) {

            while (num >= valores[i]) {

                resultado += romanos[i];

                num -= valores[i];

            }

        }

        return resultado;

    }

    // Romano a Decimal

    public int romanoADecimal(String romano) {

        romano = romano.toUpperCase();

        int resultado = 0;

        for (int i = 0; i < romano.length(); i++) {

            int actual = valorRomano(romano.charAt(i));

            if (i + 1 < romano.length()) {

                int siguiente = valorRomano(romano.charAt(i + 1));

                if (actual < siguiente) {

                    resultado -= actual;

                } else {

                    resultado += actual;

                }

            } else {

                resultado += actual;

            }

        }

        return resultado;

    }

    private int valorRomano(char c) {

        switch (c) {

            case 'I': return 1;

            case 'V': return 5;

            case 'X': return 10;

            case 'L': return 50;

            case 'C': return 100;

            case 'D': return 500;

            case 'M': return 1000;

            default: return 0;

        }

    }
}
