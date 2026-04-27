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
    <title>Menú de Ejercicios</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>
        body { background-color: #f4f6f9; }

        .card-custom {
            border: none;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.1);
            overflow: hidden;
        }

        .card-header-custom {
            background: linear-gradient(135deg, #0d6efd, #0a58ca);
            color: white;
            padding: 1.5rem;
            text-align: center;
        }

        .list-group-item {
            border: none;
            border-bottom: 1px solid #eee;
            transition: 0.2s;
        }

        .list-group-item:hover {
            background-color: #f1f3f5;
            transform: translateX(5px);
        }

        a {
            text-decoration: none;
            color: #333;
            font-weight: 500;
        }
    </style>
</head>

<body>

<div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
    <div class="card card-custom w-100" style="max-width: 600px;">
        
        <div class="card-header-custom">
            <h2 class="mb-0"><i class="bi bi-list-task"></i> PA1 - Ejercicios</h2>
        </div>

        <ul class="list-group list-group-flush">
            <li class="list-group-item">
                <a href="ejercicio1"><i class="bi bi-triangle"></i> Ejercicio 1 - Trapecio</a>
            </li>
            <li class="list-group-item">
                <a href="ejercicio2"><i class="bi bi-123"></i> Ejercicio 2 - Números Romanos</a>
            </li>
            <li class="list-group-item">
                <a href="ejercicio3"><i class="bi bi-currency-dollar"></i> Ejercicio 3 - Monedas</a>
            </li>
            <li class="list-group-item">
                <a href="ejercicio4"><i class="bi bi-bounding-box"></i> Ejercicio 4 - Figuras Geométricas</a>
            </li>
            <li class="list-group-item">
                <a href="ejercicio5"><i class="bi bi-ticket-perforated"></i> Ejercicio 5 - Calculadora Entradas de Teatro</a>
            </li>
        </ul>

    </div>
</div>

</body>
</html>
