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
                <asp:Repeater ID="rptProductos" runat="server">
                    <ItemTemplate>
                        <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                            <div class="card h-100 product-card border-0 shadow-sm">
                                <img src='<%# ResolveUrl(Eval("UrlFoto").ToString()) %>' class="card-img-top p-3" alt='<%# Eval("Name") %>'>
                                <div class="card-body">
                                    <h5 class="card-title"><%# Eval("Name") %></h5>
                                    <p class="card-text text-muted small">Categoría: <%# Eval("Category") %></p>
                                    <div class="d-flex justify-content-between align-items-center price-section">
                                        <span class="fw-bold text-primary">$<%# Eval("ProductPrice") %></span>
                                        <button class="btn btn-sm btn-outline-primary">
                                            <i class="fas fa-cart-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>


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
        </div>
    </section>
</asp:Content>
