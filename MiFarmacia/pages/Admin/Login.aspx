<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto1_Farmacia_.pages.Admin.LoginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Farmacia - Login Administrador</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../../css/Admin/login.css" rel="stylesheet"/>
    <link href="../../css/sweetalert.css" rel="stylesheet" />
    <script src="../../Scripts/sweetalert.min.js"></script>
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container">
            <div class="row justify-content-center align-items-center min-vh-100">
                <div class="col-md-8 col-lg-6 col-xl-5">
                    <div class="card shadow-sm login-card">
                        <div class="card-body p-4 p-md-5">
                            <!-- Logo y título -->
                            <div class="text-center mb-4">
                                <img src="../../assets/images/logoIA.png" alt="Logo Farmacia" class="login-logo mb-3"/>
                                <h3 class="fw-bold text-primary">Panel de Administración</h3>
                                <p class="text-muted">Ingrese sus credenciales para continuar</p>
                            </div>
                            
                            <!-- Formulario de login -->
                            <div class="mb-3">
                                <label for="txtUsuario" class="form-label">Usuario</label>
                                <div class="input-group">
                                    <span class="input-group-text bg-light">
                                        <i class="fas fa-user text-primary"></i>
                                    </span>
                                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" placeholder="Ingrese su usuario"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvtxtNombre" ControlToValidate="txtUsuario" CssClass="txt-danger" runat="server" ErrorMessage="Nombre de usuario requerido"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            
                            <div class="mb-4">
                                <label for="txtPassword" class="form-label">Contraseña</label>
                                <div class="input-group">
                                    <span class="input-group-text bg-light">
                                        <i class="fas fa-lock text-primary"></i>
                                    </span>
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Ingrese su contraseña"></asp:TextBox>
                                    <button id="btn_toggle_pswd" class="btn btn-outline-secondary toggle-password" type="button">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <asp:RequiredFieldValidator ID="rfvtxtPassword" ControlToValidate="txtPassword" CssClass="txt-danger" runat="server" ErrorMessage="Contraseña requerida"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            
                            <div class="d-flex justify-content-between align-items-center mb-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="chkRecordar"/>
                                    <label class="form-check-label" for="chkRecordar">Recordar sesión</label>
                                </div>
                                <a href="#" class="text-decoration-none">¿Olvidó su contraseña?</a>
                            </div>
                            
                            <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary w-100 py-2 mb-3"  OnClick="btnLogin_Click"/>
                            
                            <div class="text-center">
                                <p class="text-muted mb-0">¿No tiene una cuenta? <a href="#" class="text-decoration-none">Contacte al soporte</a></p>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Mensajes de error/éxito -->
                    <div class="mt-3 text-center">
                        <asp:Label ID="lblMensaje" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../../js/Admin/login.js"></script>
</body>
</html>