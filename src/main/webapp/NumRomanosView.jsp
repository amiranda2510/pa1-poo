<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 2 - Convertidor Romano</title>

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

        .result-box {
            background-color: #f8f9fa;
            border-radius: 8px;
            padding: 15px;
            margin-top: 20px;
        }
    </style>
</head>

<body>

<div class="container py-5">
    <div class="card card-custom mx-auto" style="max-width: 650px;">

        <div class="card-header-custom">
            <h3><i class="bi bi-123"></i> Convertidor Romano</h3>
            <p class="mb-0">Convierte entre números decimales y romanos</p>
        </div>

        <div class="card-body">

            <form action="<%= request.getContextPath() %>/ejercicio2" method="post">

                <div class="row">

                    <!-- Decimal a Romano -->
                    <div class="col-md-6 mb-4">
                        <h5>Decimal → Romano</h5>
                        <input type="number" class="form-control mb-2" name="numero" placeholder="Ej: 10">
                        <button type="submit" class="btn btn-outline-primary w-100" name="accion" value="romano">
                            <i class="bi bi-arrow-right"></i> Convertir
                        </button>
                    </div>

                    <!-- Romano a Decimal -->
                    <div class="col-md-6 mb-4">
                        <h5>Romano → Decimal</h5>
                        <input type="text" class="form-control mb-2" name="romano" placeholder="Ej: X">
                        <button type="submit" class="btn btn-outline-primary w-100" name="accion" value="decimal">
                            <i class="bi bi-arrow-left"></i> Convertir
                        </button>
                    </div>

                </div>

            </form>

            <!-- Resultado -->
            <div class="result-box">
                <h5>Resultado</h5>

                <%
                    Object resultado = request.getAttribute("resultado");
                    if (resultado != null) {
                %>
                    <p class="mb-0"><strong><%= resultado %></strong></p>
                <%
                    } else {
                %>
                    <p class="text-muted mb-0">Aquí aparecerá el resultado</p>
                <%
                    }
                %>
            </div>
            
            <div class="mt-4 text-center">
                <a href="index.jsp" class="btn btn-outline-secondary px-4 py-2 rounded-pill">
                    <i class="bi bi-house-door me-1"></i> Volver al Menú Principal
                </a>
        </div>

        </div>
    </div>
</div>

</body>
</html>
