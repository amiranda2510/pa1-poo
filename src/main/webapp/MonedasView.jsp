<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 3 - Conversión de Monedas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <style>
        body { background-color: #f4f6f9; }
        .card-custom { border: none; border-radius: 12px; box-shadow: 0 8px 24px rgba(0,0,0,0.1); overflow: hidden; }
        .card-header-custom { background: linear-gradient(135deg, #198754, #146c43); color: white; padding: 1.5rem; text-align: center; } 
        .result-box { background-color: #e8f5e9; border-radius: 6px; padding: 15px; }
        .badge-result { font-size: 1.25rem; padding: 10px 18px; }
    </style>
</head>
<body class="d-flex justify-content-center align-items-center min-vh-100 p-4">

    <div class="card card-custom w-100" style="max-width: 500px;">
        <div class="card-header-custom">
            <h2 class="m-0 fw-bold"><i class="bi bi-currency-exchange me-2"></i>Conversor</h2>
            <p class="mb-0 text-light opacity-75">Soles, Dólares y Euros</p>
        </div>
        
        <div class="card-body p-4 p-md-5">
            <form action="ejercicio3" method="POST">
                
                <div class="mb-4">
                    <label class="form-label text-secondary fw-semibold"><i class="bi bi-cash me-1"></i> Monto a convertir:</label>
                    <div class="input-group input-group-lg shadow-sm">
                        <span class="input-group-text bg-light border-end-0"><i class="bi bi-123 text-muted"></i></span>
                        <input type="number" step="0.01" min="0.01" class="form-control border-start-0" name="txtMonto" required>
                    </div>
                </div>
                
                <div class="row g-3 mb-4">
                    <div class="col-6">
                        <label class="form-label text-secondary fw-semibold">De (Origen):</label>
                        <select class="form-select form-select-lg shadow-sm" name="selDe" required>
                            <option value="SOLES">🇵🇪 Soles (PEN)</option>
                            <option value="DOLARES">🇺🇸 Dólares (USD)</option>
                            <option value="EURO">🇪🇺 Euros (EUR)</option>
                        </select>
                    </div>
                    <div class="col-6">
                        <label class="form-label text-secondary fw-semibold">A (Destino):</label>
                        <select class="form-select form-select-lg shadow-sm" name="selA" required>
                            <option value="DOLARES" selected>🇺🇸 Dólares (USD)</option>
                            <option value="SOLES">🇵🇪 Soles (PEN)</option>
                            <option value="EURO">🇪🇺 Euros (EUR)</option>
                        </select>
                    </div>
                </div>
                
                <button type="submit" class="btn btn-success w-100 py-3 fs-5 fw-semibold shadow-sm rounded-3">
                    <i class="bi bi-arrow-left-right me-1"></i> Convertir Ahora
                </button>
            </form>
            
            <% if(request.getAttribute("resMonedas") != null) { %>
            
            <hr class="my-4 text-muted">
            
            <div class="result-box shadow-sm mb-3">
                <div class="d-flex justify-content-between align-items-center m-3">
                    <span class="text-secondary fw-semibold fs-5">Total:</span>
                    <span class="badge bg-success badge-result rounded-pill shadow-sm">${resMonedas}</span>
                </div>
            </div>
            
            <% } %>
            
            <div class="mt-4 text-center">
                <a href="index.jsp" class="btn btn-outline-secondary px-4 py-2 rounded-pill">
                    <i class="bi bi-house-door me-1"></i> Volver al Menú Principal
                </a>
            </div>
            
        </div>
    </div>

</body>
</html>