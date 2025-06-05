<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Parents.aspx.cs" Inherits="Proyecto1_Farmacia_.pages.Parents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!-- Sección Cuidados Parentales -->
    <section class="py-5 bg-white">
        <div class="container">
            <!-- Título y descripción -->
            <div class="row mb-5">
                <div class="col-lg-8 mx-auto text-center">
                    <h2 class="fw-bold text-primary mb-3">Cuidados Parentales</h2>
                    <p class="lead">Recursos y consejos para padres primerizos</p>
                </div>
            </div>

            <!-- Videos de YouTube -->
            <div class="row g-4 mb-5">
                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="ratio ratio-16x9">
                            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/jkJpD8QGJGM"
                                allowfullscreen></iframe>
                        </div>
                        <div class="card-body">
                            <h3 class="h5">Cuidados del recién nacido</h3>
                            <p class="text-muted">Aprende los cuidados básicos para tu bebé en sus primeros días</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="ratio ratio-16x9">
                            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/dHSbiBicVKE"
                                allowfullscreen></iframe>
                        </div>
                        <div class="card-body">
                            <h3 class="h5">Alimentación saludable</h3>
                            <p class="text-muted">Guía completa para la alimentación en el primer año</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="ratio ratio-16x9">
                            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/8xClFAKZSJc"
                                allowfullscreen></iframe>
                        </div>
                        <div class="card-body">
                            <h3 class="h5">Sueño del bebé</h3>
                            <p class="text-muted">Cómo establecer rutinas de sueño saludables</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Asesorías para padres -->
            <div class="row align-items-center mb-5 py-4 bg-light rounded-3">
                <div class="col-md-8">
                    <h3 class="fw-bold mb-3">¿Eres padre primerizo?</h3>
                    <p class="mb-md-0">
                        Agenda una asesoría personalizada con nuestros especialistas en cuidado infantil. 
                Resuelve todas tus dudas y recibe recomendaciones profesionales.
                    </p>
                </div>
                <div class="col-md-4 text-md-end mt-3 mt-md-0">
                    <!-- Cambia tu botón a esto (elimina el onclick) -->
                    <button class="btn btn-primary btn-lg px-4" data-bs-toggle="modal" data-bs-target="#citaModal">
                        <i class="fas fa-calendar-check me-2"></i>Agendar asesoría
                    </button>
                </div>
            </div>
            <!-- MODAL -->
            <div class="modal fade" id="citaModal" tabindex="-1" aria-labelledby="citaModalLabel" aria-hidden="true">
                <form runat="server">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header bg-primary text-white">
                                <h5 class="modal-title" id="citaModalLabel">Programar Cita</h5>
                                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form id="formCita">
                                    <div class="row g-3">
                                        <!-- Información del paciente -->
                                        <div class="col-md-6">
                                            <h5 class="mb-3 text-primary">Información del Paciente</h5>
                                            <div class="mb-3">
                                                <label for="txtPacienteName" class="form-label">Nombre completo</label>
                                                <asp:TextBox ID="txtPacienteName" runat="server" placeholder="nombre" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="mb-3">
                                                <label for="txtEdadPaciente" class="form-label">Edad</label>
                                                <asp:TextBox ID="txtEdadPaciente" runat="server" placeholder="12" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <!-- Información de los padres -->
                                        <div class="col-md-6">
                                            <h5 class="mb-3 text-primary">Información de los Padres</h5>
                                            <div class="mb-3">
                                                <label for="txtEdadpadre" class="form-label">Edad del Padre</label>
                                                <asp:TextBox ID="txtEdadPadre" runat="server" placeholder="" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="mb-3">
                                                <label for="txtEdadMadre" class="form-label">Edad de la Madre</label>
                                                <asp:TextBox ID="txtEdadMadre" runat="server" placeholder="" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <!-- Información de contacto -->
                                        <div class="col-12">
                                            <h5 class="mb-3 text-primary">Contacto</h5>
                                            <div class="row g-3">
                                                <div class="col-md-6">
                                                    <label for="txtEmail" class="form-label">Correo electrónico</label>
                                                    <asp:TextBox ID="txtEmail" runat="server" placeholder="" CssClass="form-control"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvtxtEmail" ControlToValidate="txtEmail"
                                                        CssClass="text-danger"
                                                        runat="server" ErrorMessage="Se debe colocar el contacto del cliente"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Selección de fecha y hora -->

                                        <div class="col-md-6">
                                            <label for="txtFecha" class="form-label">Fecha</label>
                                            <asp:TextBox ID="txtFecha" runat="server" placeholder="dd-mm-aaaa" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtFecha"
                                                CssClass="text-danger"
                                                runat="server" ErrorMessage="Se debe colocar el contacto del cliente"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="ddlHorarios" class="form-label">Horario</label>
                                            <asp:DropDownList ID="ddlHorarios" runat="server" CssClass="form-select" required="true" />
                                        </div>

                                        <div class="col-md-6">
                                            <label for="ddlSucursales" class="form-label">Sucursal</label>
                                            <asp:DropDownList ID="ddlSucursales" runat="server" CssClass="form-select" required="true" />
                                        </div>


                                        <!-- Comentarios adicionales -->
                                        <div class="col-12">
                                            <div class="mb-3">
                                                <label for="txtComentarios" class="form-label">Comentarios adicionales</label>
                                               <asp:TextBox ID="txtComentarios" runat="server" placeholder="" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- Botón de envíar -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                <asp:Button ID="btnConfirmarCita" runat="server" CssClass="btn btn-primary" Text="Confirmar Cita" OnClick="btnConfirmarCita_Click" />
                            </div>
                        </div>
                    </div>
                </form>
            </div>


            <!-- Sonidos relajantes -->
            <div class="row">
                <div class="col-12">
                    <div class="card border-0 shadow-sm">
                        <div class="card-header bg-primary text-white">
                            <h3 class="h5 mb-0"><i class="fas fa-music me-2"></i>Sonidos Relajantes para Bebés</h3>
                        </div>
                        <div class="card-body">
                            <div class="row g-3">
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <button class="btn btn-sound w-100 py-3" data-sound="../assets/audios/lluvia.mp3">
                                        <i class="fas fa-cloud-rain fa-2x mb-2"></i>
                                        <br>
                                        Sonido de lluvia
                                    </button>
                                </div>
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <button class="btn btn-sound w-100 py-3" data-sound="../assets/audios/ruidoBlanco.mp3">
                                        <i class="fas fa-fan fa-2x mb-2"></i>
                                        <br>
                                        Ruido blanco
                                    </button>
                                </div>
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <button class="btn btn-sound w-100 py-3" data-sound="../assets/audios/latidos.mp3">
                                        <i class="fas fa-heartbeat fa-2x mb-2"></i>
                                        <br>
                                        Latidos cardíacos
                                    </button>
                                </div>
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <button class="btn btn-sound w-100 py-3" data-sound="../assets/audios/olas.mp3">
                                        <i class="fas fa-water fa-2x mb-2"></i>
                                        <br>
                                        Olas del mar
                                    </button>
                                </div>
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <button class="btn btn-sound w-100 py-3" data-sound="../assets/audios/nature.mp3">
                                        <i class="fa-solid fa-tree  fa-2x mb-2"></i>
                                        <br>
                                        Naturaleza
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Audio Player (oculto) -->
    <audio id="audioPlayer"></audio>
    <script src="../js/parents.js"></script>
</asp:Content>
