/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trust.Model;
public class MonedasModel {
        // Tasas de cambio fijas para el ejercicio
    // 1 Dólar = 3.46 Soles | 1 Euro = 4.06 Soles
    public double convertir(double monto, String de, String a) {
        double montoEnSoles = monto;

        // Primero convertimos cualquier moneda de origen a Soles
        if (de.equals("DOLARES")) {
            montoEnSoles = monto * 3.46;
        } else if (de.equals("EURO")) {
            montoEnSoles = monto * 4.06;
        }

        // Luego convertimos de Soles a la moneda de destino
        if (a.equals("DOLARES")) {
            return montoEnSoles / 3.46;
        } else if (a.equals("EURO")) {
            return montoEnSoles / 4.06;
        } else {
            return montoEnSoles; // Si el destino es Soles
        }
    }
}
