package com.trust.ejercicio1.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.trust.ejercicio1.model.TrapecioModel;

@WebServlet(name = "TrapecioServlet", urlPatterns = {"/ejercicio1"})
public class TraprecioController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("TrapecioView.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        TrapecioModel miCalculadora = new TrapecioModel();
        miCalculadora.calcular();
        
        request.setAttribute("resAltura", String.format("%.2f", miCalculadora.altura));
        request.setAttribute("resAreaTriangulo", String.format("%.2f", miCalculadora.areaTriangulo));
        request.setAttribute("resPerimetro", String.format("%.2f", miCalculadora.perimetro));
        

        request.getRequestDispatcher("TrapecioView.jsp").forward(request, response);
    }
}