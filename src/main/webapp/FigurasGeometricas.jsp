<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 4 - Figuras Geométricas</title>

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
            margin-top: 15px;
        }
    </style>
</head>

<body>

<div class="container py-5">
    <div class="card card-custom mx-auto" style="max-width: 600px;">

        <div class="card-header-custom">
            <h3><i class="bi bi-bounding-box"></i> Figuras Geométricas</h3>
            <p class="mb-0">Selecciona una figura y calcula sus valores</p>
        </div>

        <div class="card-body">

            <% String figura = (String) session.getAttribute("figura"); %>

            <form action="ejercicio4" method="POST">

                <!-- Botones -->
                <div class="d-grid gap-2 mb-4">
                    <button type="submit" class="btn btn-outline-primary" name="btnFigura" value="1">Cuadrado</button>
                    <button type="submit" class="btn btn-outline-primary" name="btnFigura" value="2">Rectángulo</button>
                    <button type="submit" class="btn btn-outline-primary" name="btnFigura" value="3">Triángulo</button>
                    <button type="submit" class="btn btn-outline-primary" name="btnFigura" value="4">Rombo</button>
                    <button type="submit" class="btn btn-outline-primary" name="btnFigura" value="5">Trapecio</button>
                </div>

                <!-- Inputs dinámicos -->
                <% if ("1".equals(figura)) { %>
                    <div class="mb-3">
                        <label class="form-label">Lado</label>
                        <input type="text" class="form-control" name="inValor1"/>
                    </div>
                <% } else if ("2".equals(figura)) { %>
                    <div class="mb-3">
                        <label class="form-label">Base</label>
                        <input type="text" class="form-control" name="inValor1"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Altura</label>
                        <input type="text" class="form-control" name="inValor2"/>
                    </div>
                <% } else if ("3".equals(figura)) { %>
                    <div class="mb-3">
                        <label class="form-label">Base</label>
                        <input type="text" class="form-control" name="inValor1"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Altura</label>
                        <input type="text" class="form-control" name="inValor2"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Lado 1</label>
                        <input type="text" class="form-control" name="inValor3"/>
                    </div>
                <% } else if ("4".equals(figura)) { %>
                    <div class="mb-3">
                        <label class="form-label">Diagonal mayor</label>
                        <input type="text" class="form-control" name="inValor1"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Diagonal menor</label>
                        <input type="text" class="form-control" name="inValor2"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Lado 1</label>
                        <input type="text" class="form-control" name="inValor3"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Lado 2</label>
                        <input type="text" class="form-control" name="inValor4"/>
                    </div>
                <% } else if ("5".equals(figura)) { %>
                    <div class="mb-3">
                        <label class="form-label">Base mayor</label>
                        <input type="text" class="form-control" name="inValor1"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Base menor</label>
                        <input type="text" class="form-control" name="inValor2"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Altura</label>
                        <input type="text" class="form-control" name="inValor3"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Lado 1</label>
                        <input type="text" class="form-control" name="inValor4"/>
                    </div>
                <% } %>

                <!-- Resultados -->
                <div class="result-box">
                    <p><strong>Área:</strong> ${sResponse}</p>
                    <p><strong>Perímetro:</strong> ${sResponse2}</p>
                </div>

                <!-- Botón calcular -->
                <div class="d-grid mt-3">
                    <button type="submit" class="btn btn-primary">
                        <i class="bi bi-calculator"></i> Calcular
                    </button>
                </div>

            </form>
        </div>
    </div>
</div>

</body>
</html>

