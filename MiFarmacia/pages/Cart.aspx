<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Proyecto1_Farmacia_.pages.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/cart.css" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="py-5">
        <div class="container">
            <div class="row">
                <!-- Lista de productos -->
                <div class="col-lg-8">
                    <div class="card shadow-sm mb-4">
                        <div class="card-header bg-primary text-white">
                            <h3 class="h5 mb-0"><i class="fas fa-shopping-cart me-2"></i>Tu Carrito</h3>
                        </div>
                        <div class="card-body">
                            <!-- Producto 1 -->
                            <div class="row align-items-center mb-4 cart-item">
                                <div class="col-md-2">
                                    <img src="../assets/images/producto1.jpg" alt="Paracetamol" class="img-fluid rounded">
                                </div>
                                <div class="col-md-4">
                                    <h5 class="mb-1">Paracetamol 500mg</h5>
                                    <p class="text-muted small mb-0">Caja con 20 tabletas</p>
                                </div>
                                <div class="col-md-3">
                                    <div class="input-group">
                                        <button class="btn btn-outline-secondary btn-sm minus-btn" type="button">-</button>
                                        <input type="text" class="form-control form-control-sm text-center quantity" value="1">
                                        <button class="btn btn-outline-secondary btn-sm plus-btn" type="button">+</button>
                                    </div>
                                </div>
                                <div class="col-md-2 text-end">
                                    <span class="fw-bold">$96.00</span>
                                </div>
                                <div class="col-md-1 text-end">
                                    <button class="btn btn-sm btn-outline-danger remove-btn">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </div>
                            </div>

                            <!-- Producto 2 -->
                            <div class="row align-items-center mb-4 cart-item">
                                <div class="col-md-2">
                                    <img src="../assets/images/producto2.jpg" alt="Vitamina C" class="img-fluid rounded">
                                </div>
                                <div class="col-md-4">
                                    <h5 class="mb-1">Vitamina C 1000mg</h5>
                                    <p class="text-muted small mb-0">Frasco con 30 cápsulas</p>
                                </div>
                                <div class="col-md-3">
                                    <div class="input-group">
                                        <button class="btn btn-outline-secondary btn-sm minus-btn" type="button">-</button>
                                        <input type="text" class="form-control form-control-sm text-center quantity" value="2">
                                        <button class="btn btn-outline-secondary btn-sm plus-btn" type="button">+</button>
                                    </div>
                                </div>
                                <div class="col-md-2 text-end">
                                    <span class="fw-bold">$250.00</span>
                                </div>
                                <div class="col-md-1 text-end">
                                    <button class="btn btn-sm btn-outline-danger remove-btn">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </div>
                            </div>

                            <!-- Continuar comprando -->
                            <div class="mt-4">
                                <a href="/pages/index.aspx" class="btn btn-outline-primary">
                                    <i class="fas fa-arrow-left me-2"></i>Continuar comprando
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Resumen del pedido -->
                <div class="col-lg-4">
                    <div class="card shadow-sm sticky-top" style="top: 20px;">
                        <div class="card-header bg-primary text-white">
                            <h3 class="h5 mb-0"><i class="fas fa-receipt me-2"></i>Resumen del Pedido</h3>
                        </div>
                        <div class="card-body">
                            <div class="d-flex justify-content-between mb-2">
                                <span>Subtotal:</span>
                                <span>$346.00</span>
                            </div>
                            <div class="d-flex justify-content-between mb-2">
                                <span>Envío:</span>
                                <span>$45.00</span>
                            </div>
                            <div class="d-flex justify-content-between mb-3">
                                <span>Descuento:</span>
                                <span class="text-danger">-$20.00</span>
                            </div>
                            <hr>
                            <div class="d-flex justify-content-between fw-bold fs-5">
                                <span>Total:</span>
                                <span>$371.00</span>
                            </div>
                            <div class="d-grid mt-4">
                                <button class="btn btn-primary btn-lg">
                                    <i class="fas fa-credit-card me-2"></i>Proceder al pago
                                </button>
                            </div>
                            <div class="mt-3 text-center">
                                <img src="../assets/images/payment-methods.png" alt="Métodos de pago" class="img-fluid" style="max-height: 60px;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="../js/cart.js"></script>
</asp:Content>
