<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 5 - Entradas Teatro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <style>
        body { background-color: #f8f9fa; }
        .card-custom { border: none; border-radius: 16px; box-shadow: 0 10px 30px rgba(0,0,0,0.08); overflow: hidden; }
        .card-header-custom { background: linear-gradient(135deg, #6610f2, #0d6efd); color: white; padding: 2rem; text-align: center; } 
        .form-label { font-weight: 600; color: #495057; }
        .result-box { background-color: #f0f4ff; border: 1px solid #dbe4ff; border-radius: 12px; padding: 20px; }
        .list-group-item { border: none; background: transparent; padding: 0.5rem 0; display: flex; justify-content: space-between; }
        .total-pay { font-size: 1.5rem; color: #0d6efd; font-weight: 800; }
    </style>
</head>
<body class="d-flex justify-content-center align-items-center min-vh-100 p-3">

    <div class="card card-custom w-100" style="max-width: 550px;">
        <div class="card-header-custom">
            <h2 class="m-0 fw-bold"><i class="bi bi-ticket-perforated me-2"></i>Proyecto teatro</h2>
            <p class="mb-0 text-light opacity-75">Reserva de Entradas y Descuentos</p>
        </div>
        
        <div class="card-body p-4 p-md-5">
            <form action="ejercicio5" method="POST">
                
                <div class="mb-3">
                    <label class="form-label"><i class="bi bi-person-badge me-1"></i> Tipo de entrada:</label>
                    <select class="form-select form-select-lg shadow-sm" name="perfil" required>
                        <option value="NINO">🧒 Niño (Menores de 8 años)</option>
                        <option value="ADOLESCENTE">👦 Adolescente (8 a 12 años)</option>
                        <option value="ADULTO">👨 Adulto (13 a 59 años)</option>
                        <option value="MAYOR">👴 Adulto Mayor (Mayores de 59 años)</option>
                    </select>
                </div>
                
                <div class="row g-3 mb-4">
                    <div class="col-md-6">
                        <label class="form-label"><i class="bi bi-plus-circle me-1"></i> Cantidad:</label>
                        <input type="number" class="form-control form-control-lg shadow-sm" name="txtNumEntradas" min="1" placeholder="0" required>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label"><i class="bi bi-calendar3 me-1"></i> Día:</label>
                        <select class="form-select form-select-lg shadow-sm" name="dia" required>
                            <option value="LUNES">Lunes</option>
                            <option value="MARTES">Martes</option>
                            <option value="MIERCOLES">Miércoles</option>
                            <option value="JUEVES">Jueves</option>
                            <option value="VIERNES">Viernes</option>
                            <option value="SABADO">Sábado</option>
                            <option value="DOMINGO">Domingo</option>
                        </select>
                    </div>
                </div>
                
                <button type="submit" class="btn btn-primary w-100 py-3 fs-5 fw-semibold shadow-sm rounded-3">
                    <i class="bi bi-calculator me-1"></i> Calcular Costo
                </button>
            </form>
            
            <% if(request.getAttribute("resPrecioFinal") != null) { %>
            
            <hr class="my-4 text-muted">
            
            <div class="result-box shadow-sm">
                <h5 class="fw-bold mb-3"><i class="bi bi-receipt me-2"></i>Resumen de Pago</h5>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                        <span>Rango de edad:</span>
                        <span class="fw-bold text-dark">${resRangoEdad}</span>
                    </li>
                    <li class="list-group-item">
                        <span>Entradas:</span>
                        <span class="fw-bold text-dark">${resNumEntradas}</span>
                    </li>
                    <li class="list-group-item">
                        <span>Precio regular:</span>
                        <span class="fw-bold text-dark">$${resPrecioEntradas}</span>
                    </li>
                    <li class="list-group-item">
                        <span>Descuento aplicado:</span>
                        <span class="fw-bold text-danger">-$${resDescuento}</span>
                    </li>
                    <li class="list-group-item total-pay mt-2 border-top pt-3">
                        <span>TOTAL:</span>
                        <span>$${resPrecioFinal}</span>
                    </li>
                </ul>
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
