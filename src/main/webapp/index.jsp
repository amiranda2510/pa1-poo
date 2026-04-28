<%-- 
    Document   : index
    Created on : Apr 27, 2026, 1:32:18 AM
    Author     : andreamiranda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>PROCESO DE APREMDIZAJE 1</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">
    
    <style>
        body { background-color: #f0f2f5; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        .menu-card { transition: transform 0.3s ease, box-shadow 0.3s ease; border-radius: 12px; }
        .menu-card:hover { transform: translateY(-8px); box-shadow: 0 12px 24px rgba(0,0,0,0.15) !important; cursor: pointer; }
        .ejercicio-link { text-decoration: none; color: inherit; display: block; }
        .icon-box { font-size: 2.5rem; margin-bottom: 15px; }
    </style>
</head>
<body class="py-5">
    <div class="container">
        
        <div class="text-center mb-5">
            <h1 class="display-4 fw-bold text-dark">PROCESO DE APRENDIZAJE 1</h1>
            <p class="lead text-secondary">PROGRAMACIÓN ORIENTADA A OBJETOS</p>
            <hr class="w-25 mx-auto border-primary" style="border-width: 3px;">
        </div>

        <div class="row g-4 justify-content-center">
            
            <div class="col-md-6 col-lg-4">
                <a href="ejercicio1" class="ejercicio-link">
                    <div class="card h-100 shadow-sm menu-card border-top border-primary border-4">
                        <div class="card-body text-center p-4">
                            <div class="icon-box text-primary"><i class="bi bi-triangle"></i></div>
                            <h4 class="card-title fw-bold">Ejercicio 1</h4>
                            <p class="card-text text-muted">Proyecto “Trapecio”.</p>
                            <span class="btn btn-outline-primary w-100 mt-2">Ver Proyecto</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-6 col-lg-4">
                <a href="ejercicio2" class="ejercicio-link">
                    <div class="card h-100 shadow-sm menu-card border-top border-success border-4">
                        <div class="card-body text-center p-4">
                            <div class="icon-box text-success fw-bold" style="font-family: 'Times New Roman', serif;">
                                XII
                            </div>
                            <h4 class="card-title fw-bold">Ejercicio 2</h4>
                            <p class="card-text text-muted">Proyecto “Números romanos”.</p>
                            <span class="btn btn-outline-success w-100 mt-2">Ver Proyecto</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-6 col-lg-4">
                <a href="ejercicio3" class="ejercicio-link">
                    <div class="card h-100 shadow-sm menu-card border-top border-warning border-4">
                        <div class="card-body text-center p-4">
                            <div class="icon-box text-warning"><i class="bi bi-currency-exchange"></i></div>
                            <h4 class="card-title fw-bold">Ejercicio 3</h4>
                            <p class="card-text text-muted">Proyecto “conversión de monedas”.</p>
                            <span class="btn btn-outline-warning w-100 mt-2">Ver Proyecto</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-6 col-lg-4">
                <a href="ejercicio4" class="ejercicio-link">
                    <div class="card h-100 shadow-sm menu-card border-top border-info border-4">
                        <div class="card-body text-center p-4">
                            <div class="icon-box text-info"><i class="bi bi-bounding-box"></i></div>
                            <h4 class="card-title fw-bold">Ejercicio 4</h4>
                            <p class="card-text text-muted">Proyecto “Figura geométrica”.</p>
                            <span class="btn btn-outline-info w-100 mt-2">Ver Proyecto</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-6 col-lg-4">
                <a href="ejercicio5" class="ejercicio-link">
                    <div class="card h-100 shadow-sm menu-card border-top border-danger border-4">
                        <div class="card-body text-center p-4">
                            <div class="icon-box text-danger"><i class="bi bi-ticket-perforated"></i></div>
                            <h4 class="card-title fw-bold">Ejercicio 5</h4>
                            <p class="card-text text-muted">Proyecto “Teatro”.</p>
                            <span class="btn btn-outline-danger w-100 mt-2">Ver Proyecto</span>
                        </div>
                    </div>
                </a>
            </div>

        </div>
    </div>
</body>
</html>