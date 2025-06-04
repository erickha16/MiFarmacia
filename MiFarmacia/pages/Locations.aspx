<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Locations.aspx.cs" Inherits="Proyecto1_Farmacia_.pages.Locations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/Locations.css" />
     <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"
     integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY="
     crossorigin=""/>
     <!-- Make sure you put this AFTER Leaflet's CSS -->
     <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
         integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo="
         crossorigin=""></script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
     <!-- Mapa -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6 border boerder-primary-subtle p-3 w-100">
                    <h2>Sucursales disponibles</h2>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                 <div id="map"></div>
            </div>
        </div>
    </section>

     <!-- Videos -->
    <section class="py-5 bg-light">
        <div class="container">
            <div class="row mb-4">
                <div class="col-md-8 mx-auto text-center">
                    <h2 class="fw-bold text-primary">Consejos de Salud</h2>
                    <p class="lead">Aprende a cuidar de tu salud con nuestros videos informativos</p>
                </div>
            </div>

            <!-- Videos -->
            <div class="row g-4">
                <!-- Video 1 -->
                <div class="col-lg-6">
                    <div class="card h-100 border-0 shadow-sm overflow-hidden">
                        <div class="card-header bg-primary text-white">
                            <h3 class="h5 mb-0">Cuidados en Invierno</h3>
                        </div>
                        <div class="ratio ratio-16x9">
                            <video controls class="w-100">
                                <source src="../assets/videos/invierno.mp4" type="video/mp4">
                                Tu navegador no soporta el elemento de video.
                            </video>
                        </div>
                        <div class="card-body">
                            <p class="card-text">Conoce los mejores productos y hábitos para proteger tu salud durante la temporada invernal.</p>
                        </div>
                    </div>
                </div>

                <!-- Video 2 -->
                <div class="col-lg-6">
                    <div class="card h-100 border-0 shadow-sm overflow-hidden">
                        <div class="card-header bg-primary text-white">
                            <h3 class="h5 mb-0">Análisis Clínicos</h3>
                        </div>
                        <div class="ratio ratio-16x9">
                            <video controls class="w-100">
                                <source src="../assets/videos/teCuida.mp4" type="video/mp4">
                                Tu navegador no soporta el elemento de video.
                            </video>
                        </div>
                        <div class="card-body">
                            <p class="card-text">Recomendaciones esenciales para mantener tu bienestar durante todo el año.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="../js/locations.js"></script>
</asp:Content>
