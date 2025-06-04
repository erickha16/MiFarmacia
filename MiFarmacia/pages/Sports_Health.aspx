<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sports_Health.aspx.cs" Inherits="Proyecto1_Farmacia_.pages.Deportes_Nutricion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/Sports&Health.css" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="py-5 bg-light">
        <div class="container">
            <div class="text-center mb-5">
                <h2 class="fw-bold display-5 text-primary">Nutrición y Deporte</h2>
                <p class="lead text-muted">Descubre nuestra amplia selección para tu salud y bienestar</p>
            </div>
            
            
            <!-- Grid de productos -->
            <div id="girdProductos" class="row g-4">
                <!-- Producto 1 -->
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card h-100 product-card border-0 shadow-sm">
                        <div class="badge bg-danger position-absolute m-2">-20%</div>
                        <img src="../assets/images/productos/producto1.jpg" class="card-img-top" alt="Producto 1">
                        <div class="card-body">
                            <h5 class="card-title">Paracetamol 500mg</h5>
                            <p class="card-text text-muted small">Caja con 20 tabletas</p>
                            <div class="d-flex justify-content-between align-items-center price-section">
                                <div>
                                    <span class="text-decoration-line-through text-muted small">$120.00</span>
                                    <span class="fw-bold text-primary ms-2">$96.00</span>
                                </div>
                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Producto 2 -->
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card h-100 product-card border-0 shadow-sm">
                        <img src="../assets/images/productos/producto2.jpg" class="card-img-top p-3" alt="Producto 2">
                        <div class="card-body">
                            <h5 class="card-title">Vitamina C 1000mg</h5>
                            <p class="card-text text-muted small">Frasco con 30 cápsulas</p>
                            <div class="d-flex justify-content-between align-items-center price-section">
                                <span class="fw-bold text-primary">$250.00</span>
                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Producto 3 -->
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card h-100 product-card border-0 shadow-sm">
                        <img src="../assets/images/productos/producto3.jpg" class="card-img-top p-3" alt="Producto 3">
                        <div class="card-body">
                            <h5 class="card-title">Jarabe para la tos</h5>
                            <p class="card-text text-muted small">120ml</p>
                            <div class="d-flex justify-content-between align-items-center price-section">
                                <span class="fw-bold text-primary">$85.00</span>
                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Producto 4 -->
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card h-100 product-card border-0 shadow-sm">
                        <div class="badge bg-success position-absolute m-2">Nuevo</div>
                        <img src="../assets/images/productos/producto4.jpg" class="card-img-top p-3" alt="Producto 4">
                        <div class="card-body">
                            <h5 class="card-title">Probiótico avanzado</h5>
                            <p class="card-text text-muted small">30 cápsulas</p>
                            <div class="d-flex justify-content-between align-items-center price-section">
                                <span class="fw-bold text-primary">$320.00</span>
                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Producto 5 -->
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card h-100 product-card border-0 shadow-sm">
                        <img src="../assets/images/productos/producto5.jpg" class="card-img-top p-3" alt="Producto 5">
                        <div class="card-body">
                            <h5 class="card-title">Termómetro digital</h5>
                            <p class="card-text text-muted small">Pantalla LCD</p>
                            <div class="d-flex justify-content-between align-items-center price-section">
                                <span class="fw-bold text-primary">$180.00</span>
                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Producto 6 -->
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card h-100 product-card border-0 shadow-sm">
                        <div class="badge bg-danger position-absolute m-2">-15%</div>
                        <img src="../assets/images/productos/producto6.jpg" class="card-img-top p-3" alt="Producto 6">
                        <div class="card-body">
                            <h5 class="card-title">Shampoo anticaspa</h5>
                            <p class="card-text text-muted small">400ml</p>
                            <div class="d-flex justify-content-between align-items-center price-section">
                                <div>
                                    <span class="text-decoration-line-through text-muted small">$95.00</span>
                                    <span class="fw-bold text-primary ms-2">$80.75</span>
                                </div>
                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Producto 7 -->
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card h-100 product-card border-0 shadow-sm">
                        <img src="../assets/images/productos/producto7.jpg" class="card-img-top p-3" alt="Producto 7">
                        <div class="card-body">
                            <h5 class="card-title">Crema hidratante</h5>
                            <p class="card-text text-muted small">250ml</p>
                            <div class="d-flex justify-content-between align-items-center price-section">
                                <span class="fw-bold text-primary">$120.00</span>
                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Producto 8 -->
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card h-100 product-card border-0 shadow-sm">
                        <img src="../assets/images/productos/producto8.jpg" class="card-img-top p-3" alt="Producto 8">
                        <div class="card-body">
                            <h5 class="card-title">Multivitamínico</h5>
                            <p class="card-text text-muted small">60 tabletas</p>
                            <div class="d-flex justify-content-between align-items-center price-section">
                                <span class="fw-bold text-primary">$280.00</span>
                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Producto 9 -->
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card h-100 product-card border-0 shadow-sm">
                        <div class="badge bg-success position-absolute m-2">Más vendido</div>
                        <img src="../assets/images/productos/producto9.jpg" class="card-img-top p-3" alt="Producto 9">
                        <div class="card-body">
                            <h5 class="card-title">Jabón antibacterial</h5>
                            <p class="card-text text-muted small">Paquete con 3 piezas</p>
                            <div class="d-flex justify-content-between align-items-center price-section">
                                <span class="fw-bold text-primary">$75.00</span>
                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Producto 10 -->
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card h-100 product-card border-0 shadow-sm">
                        <img src="../assets/images/productos/producto10.jpg" class="card-img-top p-3" alt="Producto 10">
                        <div class="card-body">
                            <h5 class="card-title">Analgésico muscular</h5>
                            <p class="card-text text-muted small">Tubo con 50g</p>
                            <div class="d-flex justify-content-between align-items-center price-section">
                                <span class="fw-bold text-primary">$65.00</span>
                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Producto 11 -->
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card h-100 product-card border-0 shadow-sm">
                        <img src="../assets/images/productos/producto11.jpg" class="card-img-top p-3" alt="Producto 11">
                        <div class="card-body">
                            <h5 class="card-title">Protector solar</h5>
                            <p class="card-text text-muted small">FPS 50, 120ml</p>
                            <div class="d-flex justify-content-between align-items-center price-section">
                                <span class="fw-bold text-primary">$210.00</span>
                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Producto 12 -->
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card h-100 product-card border-0 shadow-sm">
                        <div class="badge bg-danger position-absolute m-2">-10%</div>
                        <img src="../assets/images/productos/producto12.jpg" class="card-img-top p-3" alt="Producto 12">
                        <div class="card-body">
                            <h5 class="card-title">Suplemento de hierro</h5>
                            <p class="card-text text-muted small">30 cápsulas</p>
                            <div class="d-flex justify-content-between align-items-center price-section">
                                <div>
                                    <span class="text-decoration-line-through text-muted small">$150.00</span>
                                    <span class="fw-bold text-primary ms-2">$135.00</span>
                                </div>
                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Paginación -->
            <nav aria-label="Page navigation" class="mt-5">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Anterior</a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#">Siguiente</a>
                    </li>
                </ul>
            </nav>
        </div>
    </section>
</asp:Content>