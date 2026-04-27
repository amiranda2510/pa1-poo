<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.trust.ejercicio1.model.TrapecioModel"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Sistema de Cálculo - Trapecio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .medida-fija { background-color: #e9ecef !important; font-weight: bold; }
        .card-trapecio { border-left: 5px solid #0d6efd; }
    </style>
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow p-4 mx-auto" style="max-width: 600px;">
            <h3 class="text-center mb-4 text-primary">Proyecto "Trapecio"</h3>
            
            <div class="card-trapecio bg-white p-3 mb-4 rounded border shadow-sm">
                <h5 class="text-secondary">Medidas del trapecio </h5>
                <div class="row g-2">
                    <div class="col-6">
                        <label class="form-label small">Área Referencial:</label>
                        <input type="text" class="form-control medida-fija" value="240 cm²" readonly>
                    </div>
                    <div class="col-6">
                        <label class="form-label small">Lado DM:</label>
                        <input type="text" class="form-control medida-fija" value="1.5 cm" readonly>
                    </div>
                    <div class="col-6">
                        <label class="form-label small">Base Menor (AB):</label>
                        <input type="text" class="form-control medida-fija" value="11 cm" readonly>
                    </div>
                    <div class="col-6">
                        <label class="form-label small">Base Mayor (DC):</label>
                        <input type="text" class="form-control medida-fija" value="15 cm" readonly>
                    </div>
                </div>
            </div>

            <% 
                TrapecioModel t = (TrapecioModel) request.getAttribute("resultado"); 
                if (t != null) { 
            %>
                

                <ul class="list-group list-group-flush mb-4">
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        Altura (h): <span class="badge bg-danger rounded-pill fs-6"><%= String.format("%.2f", t.altura) %> cm</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        Área del triangulo (DAM): <span class="badge bg-danger rounded-pill fs-6"><%= String.format("%.2f", t.areaTriangulo) %> cm²</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        Perímetro Total: <span class="badge bg-danger rounded-pill fs-6"><%= String.format("%.2f", t.perimetro) %> cm</span>
                    </li>
                </ul>
                    

                <div class="text-center">
                    <a href="TrapecioView.jsp" class="btn btn-outline-secondary w-100">Volver</a>
                </div>

            <% } else { %>
                

                <div class="text-center">
                    <a href="ejercicio1" class="btn btn-primary btn-lg w-100 shadow-sm">Calcular</a>
                </div>

            <% } %>

        </div>
    </div>

    </body>
</html>