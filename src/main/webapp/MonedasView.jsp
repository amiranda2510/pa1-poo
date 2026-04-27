
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 3 - Conversión de Monedas</title>

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
            <h3><i class="bi bi-currency-exchange"></i> Conversión de Monedas</h3>
            <p class="mb-0">Convierte entre distintas monedas</p>
        </div>

        <div class="card-body">

            <form action="ejercicio3" method="POST">

                <!-- Monto -->
                <div class="mb-3">
                    <label class="form-label">Monto a convertir</label>
                    <input type="text" class="form-control" name="txtMonto" placeholder="Ej: 100">
                </div>

                <!-- Selects -->
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label class="form-label">De</label>
                        <select class="form-select" name="selDe">
                            <option value="SOLES">Soles (PEN)</option>
                            <option value="DOLARES">Dólares (USD)</option>
                            <option value="EURO">Euros (EUR)</option>
                        </select>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label class="form-label">A</label>
                        <select class="form-select" name="selA">
                            <option value="DOLARES">Dólares (USD)</option>
                            <option value="SOLES">Soles (PEN)</option>
                            <option value="EURO">Euros (EUR)</option>
                        </select>
                    </div>
                </div>

                <!-- Botón -->
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">
                        <i class="bi bi-arrow-left-right"></i> Convertir
                    </button>
                </div>

            </form>

            <!-- Resultado -->
            <div class="result-box mt-4">
                <h5>Resultado</h5>
                <p class="mb-0">El monto convertido es: <strong>${resMonedas}</strong></p>
            </div>

        </div>
    </div>
</div>

</body>
</html>

