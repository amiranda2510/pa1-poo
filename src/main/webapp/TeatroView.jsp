<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 5 - Teatro</title>

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

        .result-item {
            border-bottom: 1px dashed #ced4da;
            padding: 8px 0;
        }

        .result-item:last-child {
            border-bottom: none;
        }
    </style>
</head>

<body>

<div class="container py-5">
    <div class="card card-custom mx-auto" style="max-width: 650px;">

        <div class="card-header-custom">
            <h3><i class="bi bi-ticket-perforated"></i> Entradas para el Teatro</h3>
            <p class="mb-0">Calcula el costo total de tus entradas</p>
        </div>

        <div class="card-body">

            <form action="ejercicio5" method="POST">

                <!-- Tipo de entrada -->
                <div class="mb-3">
                    <label class="form-label">Tipo de entrada</label>
                    <select class="form-select" name="perfil">
                        <option value="NINO">Niño</option>
                        <option value="ADOLESCENTE">Adolescente</option>
                        <option value="ADULTO">Adulto</option>
                        <option value="MAYOR">Adulto Mayor</option>
                    </select>
                </div>

                <!-- Cantidad -->
                <div class="mb-3">
                    <label class="form-label">Cantidad de entradas</label>
                    <input type="text" class="form-control" name="txtNumEntradas" placeholder="Ej: 2">
                </div>

                <!-- Día -->
                <div class="mb-3">
                    <label class="form-label">Día</label>
                    <select class="form-select" name="dia">
                        <option value="LUNES">Lunes</option>
                        <option value="MARTES">Martes</option>
                        <option value="MIERCOLES">Miércoles</option>
                        <option value="JUEVES">Jueves</option>
                        <option value="VIERNES">Viernes</option>
                        <option value="SABADO">Sábado</option>
                        <option value="DOMINGO">Domingo</option>
                    </select>
                </div>

                <!-- Botón -->
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">
                        <i class="bi bi-calculator"></i> Calcular costo
                    </button>
                </div>

            </form>

            <!-- Resultados -->
            <div class="result-box">
                <h5>Resumen</h5>

                <div class="result-item">
                    Rango de edad: <strong>${resRangoEdad}</strong>
                </div>
                <div class="result-item">
                    Cantidad: <strong>${resNumEntradas}</strong>
                </div>
                <div class="result-item">
                    Precio regular: <strong>${resPrecioEntradas}</strong>
                </div>
                <div class="result-item">
                    Descuento: <strong>${resDescuento}</strong>
                </div>
                <div class="result-item">
                    Total a pagar: <strong>${resPrecioFinal}</strong>
                </div>

            </div>

        </div>
    </div>
</div>

</body>
</html>
