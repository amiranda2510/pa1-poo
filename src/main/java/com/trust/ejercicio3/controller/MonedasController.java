/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.trust.ejercicio3.controller;

import com.trust.ejercicio3.model.MonedasModel;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(name = "MonedasController", urlPatterns = {"/ejercicio3"})
public class MonedasController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MonedasController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MonedasController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/MonedasView.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
               // 1. Capturamos los datos del formulario
        String montoStr = request.getParameter("txtMonto");
        String de = request.getParameter("selDe");
        String a = request.getParameter("selA");
        
        if (montoStr != null && !montoStr.isEmpty()) {
            double monto = Double.parseDouble(montoStr);
            
            // 2. Llamamos al Modelo para hacer el cálculo
            MonedasModel model = new MonedasModel();
            double resultado = model.convertir(monto, de, a);
            
            // 3. Enviamos el resultado formateado a 2 decimales
            request.setAttribute("resMonedas", String.format("%.2f", resultado));
        }
        
        // 4. Volvemos a la vista para mostrar el resultado
        request.getRequestDispatcher("/MonedasView.jsp").forward(request, response);
    }
        
        

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
