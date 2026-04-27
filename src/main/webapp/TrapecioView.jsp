<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 1 - Trapecio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <style>
        body { background-color: #f4f6f9; }
        .card-custom { border: none; border-radius: 12px; box-shadow: 0 8px 24px rgba(0,0,0,0.1); overflow: hidden; }
        .card-header-custom { background: linear-gradient(135deg, #0d6efd, #0a58ca); color: white; padding: 1.5rem; text-align: center; }
        .data-box { background-color: #e9ecef; border-left: 5px solid #0d6efd; border-radius: 6px; padding: 15px; }
        .result-box { background-color: #f8f9fa; border: 1px solid #dee2e6; border-radius: 8px; }
        .result-item { font-size: 1.1rem; border-bottom: 1px dashed #ced4da; padding: 10px 0; }
        .result-item:last-child { border-bottom: none; }
        .badge-result { font-size: 1.05rem; padding: 8px 12px; }
    </style>
</head>
<body class="d-flex justify-content-center align-items-center min-vh-100 p-4">

    <div class="card card-custom w-100" style="max-width: 600px;">
        <div class="card-header-custom">
            <h2 class="m-0 fw-bold"><i class="bi bi-bounding-box-circles"></i> Proyecto "Trapecio"</h2>
        </div>
        
        <div class="card-body p-4 p-md-5">
            <form action="ejercicio1" method="POST">
                
                <div class=" mb-4">
                    <div class="row g-3">
                        <div class="col-6">
                            <span class="text-muted d-block small">Área Referencial</span>
                            <span class="fw-bold fs-5">240 cm²</span>
                        </div>
                        <div class="col-6">
                            <span class="text-muted d-block small">Lado DM</span>
                            <span class="fw-bold fs-5">1.5 cm</span>
                        </div>
                        <div class="col-6">
                            <span class="text-muted d-block small">Base Menor (AB)</span>
                            <span class="fw-bold fs-5">11 cm</span>
                        </div>
                        <div class="col-6">
                            <span class="text-muted d-block small">Base Mayor (DC)</span>
                            <span class="fw-bold fs-5">15 cm</span>
                        </div>
                    </div>
                </div>
                
                <button type="submit" class="btn btn-primary w-100 py-3 fs-5 fw-semibold shadow-sm rounded-3">
                    <i class="bi bi-play-fill me-1"></i> Calcular Resultados
                </button>
            </form>
            
            <% if(request.getAttribute("resAltura") != null) { %>
            
            <hr class="my-4 text-muted">
            
            <div class="result-box p-3 shadow-sm mb-4">
                <div class="result-item d-flex justify-content-between align-items-center">
                    <span class="text-secondary">Altura (h):</span>
                    <span class="badge bg-primary badge-result rounded-pill">${resAltura} cm</span>
                </div>
                <div class="result-item d-flex justify-content-between align-items-center">
                    <span class="text-secondary">Área del triángulo DAM:</span>
                    <span class="badge bg-primary badge-result rounded-pill">${resAreaTriangulo} cm²</span>
                </div>
                <div class="result-item d-flex justify-content-between align-items-center">
                    <span class="text-secondary">Perímetro total:</span>
                    <span class="badge bg-primary badge-result rounded-pill">${resPerimetro} cm</span>
                </div>
            </div>
            
            <% } %>
            
            <div class="mt-4 text-center">
                <a href="index.jsp" class="btn btn-outline-secondary px-4 py-2 rounded-pill">
                    <i class="bi bi-arrow-left me-1"></i>Menú Principal
                </a>
            </div>
            
        </div>
    </div>

</body>
</html>