package com.trust.ejercicio4.controller;

import com.trust.ejercicio4.model.FigurasGeometricasModel;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.PrintWriter;

@WebServlet(name = "FigurasGeometricasController", urlPatterns = {"/ejercicio4"})
public class FigurasGeometricasController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FigurasGeometricasController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FigurasGeometricasController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/FigurasGeometricas.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sFG = request.getSession();

        String Figura = request.getParameter("btnFigura");

        if (Figura == null) {
            Figura = (String) sFG.getAttribute("figura");
        } else {
            sFG.setAttribute("figura", Figura);
        }

        String Valor1 = request.getParameter("inValor1");
        String Valor2 = request.getParameter("inValor2");
        String Valor3 = request.getParameter("inValor3");
        String Valor4 = request.getParameter("inValor4");

        double v1 = 0;
        double v2 = 0;
        double v3 = 0;
        double v4 = 0;
        if (Valor1 != null && !Valor1.equals("")) {
            v1 = Double.parseDouble(Valor1);
        }
        if (Valor2 != null && !Valor2.equals("")) {
            v2 = Double.parseDouble(Valor2);
        }
        if (Valor3 != null && !Valor3.equals("")) {
            v3 = Double.parseDouble(Valor3);
        }
        if (Valor4 != null && !Valor4.equals("")) {
            v4 = Double.parseDouble(Valor4);
        }
        FigurasGeometricasModel objFiguraG = new FigurasGeometricasModel(
                Figura, v1, v2, v3, v4
        );
        sFG.setAttribute("sResponse", objFiguraG.AreaFigura());
        sFG.setAttribute("sResponse2", objFiguraG.PerimetroFigura());
        response.sendRedirect("FigurasGeometricas.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Servlet de cálculo de figuras geométricas";
    }
}
