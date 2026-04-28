/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.trust.ejercicio2.controller;

import com.trust.ejercicio2.model.NumRomanosModel;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "NumRomanosController", urlPatterns = {"/ejercicio2"})
public class NumRomanosController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NumRomanosController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NumRomanosController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.getRequestDispatcher("NumRomanosView.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)

        throws ServletException, IOException {

    String accion = request.getParameter("accion");
    
    NumRomanosModel modelo = new NumRomanosModel();

    if (accion != null) {

        if (accion.equals("romano")) {

            int num = Integer.parseInt(request.getParameter("numero"));

            String resultado = modelo.decimalARomano(num);

            request.setAttribute("resultado", resultado);

        }

        if (accion.equals("decimal")) {

            String rom = request.getParameter("romano");

            int resultado = modelo.romanoADecimal(rom);

            request.setAttribute("resultado", resultado);

        }

    }

    request.getRequestDispatcher("/NumRomanosView.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
