package com.trust.ejercicio1.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.trust.ejercicio1.model.TrapecioModel;
import java.io.PrintWriter;

@WebServlet(name = "TrapecioServlet", urlPatterns = {"/ejercicio1"})
public class TraprecioController extends HttpServlet {
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TraprecioController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TraprecioController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        TrapecioModel miCalculadora = new TrapecioModel();
        
        miCalculadora.calcular();
        
        request.setAttribute("resultado", miCalculadora);
        
        request.getRequestDispatcher("TrapecioView.jsp").forward(request, response);
    }
    
     @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}