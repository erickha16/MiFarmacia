<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Proyecto1_Farmacia_.pages.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!-- Carrusel -->
    <section class="py-5">
        <div class="container w-75">
            <div id="pharmaCarousel" class="carousel slide carousel-fade shadow-lg rounded-4 overflow-hidden" data-bs-ride="carousel">
                <!-- Indicadores -->
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#pharmaCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#pharmaCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#pharmaCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                
                <!-- Slides -->

                <div class="carousel-inner rounded-4">
                    <div class="carousel-item active" data-bs-interval="5000">
                        <img src="../assets/images/carrusel/carrusel1.jpg" class="d-block mx-auto img-fluid w-75" alt="Promoción de medicamentos">
            
                    </div>
                    <div class="carousel-item" data-bs-interval="5000">
                        <img src="../assets/images/carrusel/carrusel2.png" class="d-block mx-auto img-fluid w-75" alt="Productos de cuidado personal" >
                        
                    </div>
                    <div class="carousel-item" data-bs-interval="5000">
                        <img src="../assets/images/carrusel/carrusel3.jpg" class="d-block mx-auto img-fluid w-75" alt="Servicio farmacéutico" >
                        
                    </div>
                </div>
                
                <!-- Controles -->
                <button class="carousel-control-prev" type="button" data-bs-target="#pharmaCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon bg-primary rounded-circle p-3" aria-hidden="true"></span>
                    <span class="visually-hidden">Anterior</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#pharmaCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon bg-primary rounded-circle p-3" aria-hidden="true"></span>
                    <span class="visually-hidden">Siguiente</span>
                </button>
            </div>
        </div>
    </section>
    <!-- Oportunidades -->
<section class="py-5">
    <!-- Banner Hotsale -->
    <div id="hotsale" class="mb-5 mx-5">
        <a href="#"><img src="../assets/images/anuncios/hotsale.jpg" class="d-block mx-auto img-fluid w-100" alt="Ofertas especiales"></a>        
    </div>
    
    <div class="container">
        <!-- Primera fila - Título + Imagen grande -->
        <div class="row align-items-center mb-4">
            <div class="col-md-6 mb-4 mb-md-0">
                <h2 class="display-5 fw-bold text-primary">Aprovecha nuestros servicios!</h2>
                <p class="lead">Descubre todo lo que tenemos para ofrecerte y tu bienestar</p>
            </div>
            <div class="col-md-6">
                <a href="#"><img src="../assets/images/anuncios/Probiotico.jpg" class="img-fluid rounded-3 shadow" alt="Probióticos" style="max-width: 400px;"></a>  
            </div>
        </div>
        
        <!-- Segunda fila - 3 imágenes -->
        <div class="row g-4">
            <div class="col-md-4">
                <div class="card h-100 border-0 shadow-sm">
                    <a href="#"><img src="../assets/images/anuncios/vitaminate.jpg" class="card-img-top" alt="Vitaminas" style="max-height: 400px; object-fit: cover;"></a>
                    <div class="card-body text-center">
                        <h3 class="h5">Vitaminas y Suplementos</h3>
                        <p class="text-muted">Refuerza tu sistema inmunológico</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card h-100 border-0 shadow-sm">
                    <a href="#"><img src="../assets/images/anuncios/ahorra.jpg" class="card-img-top" alt="Ahorra" style="max-height: 400px; object-fit: cover;"></a>
                    <div class="card-body text-center">
                        <h3 class="h5">Promociones Especiales</h3>
                        <p class="text-muted">Ahorra en tus productos favoritos</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card h-100 border-0 shadow-sm">
                    <a href="/Citas.aspx"><img src="../assets/images/anuncios/consultas.jpg" class="card-img-top" alt="Consultas" style="max-height: 400px; object-fit: cover;"></a>  
                    <div class="card-body text-center">
                        <h3 class="h5">Consultas Farmacéuticas</h3>
                        <p class="text-muted">Asesoría profesional gratuita</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</asp:Content>
