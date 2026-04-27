/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.trust.ejercicio5.controller;

import com.trust.ejercicio5.model.TeatroModel;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "TeatroController", urlPatterns = {"/ejercicio5"})
public class TeatroController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TeatroController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TeatroController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.getRequestDispatcher("TeatroView.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Perfil = request.getParameter("perfil");
        String CantEntradas = request.getParameter("txtNumEntradas");
        String Dia = request.getParameter("dia");
        
        TeatroModel objTeatro = new TeatroModel(Perfil, Integer.parseInt(CantEntradas), Dia);
             
        request.setAttribute("resRangoEdad", objTeatro.obtenerRangoEdad());
        request.setAttribute("resNumEntradas", objTeatro.cantEntradas);

        double precioBase = objTeatro.obtenerPrecioBase();
        double subtotal = precioBase * objTeatro.cantEntradas;
        double descuento = objTeatro.obtenerDescuento();
        double total = objTeatro.calcularTotal();

        request.setAttribute("resPrecioEntradas", subtotal);
        request.setAttribute("resDescuento", (descuento * 100) + "%");
        request.setAttribute("resPrecioFinal", total);

        request.getRequestDispatcher("TeatroView.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
