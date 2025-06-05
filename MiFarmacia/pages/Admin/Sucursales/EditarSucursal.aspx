<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EditarSucursal.aspx.cs" Inherits="MiFarmacia.pages.Admin.Sucursales.EditarSucursal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <h3>Editar informaci´´on Sucursal</h3>
        <h4>ID de la sucursal seleccionada:
    <asp:Label ID="lblId" runat="server" Text=""></asp:Label></h4>

        <div class="col-md-12">
            <div class="form-group">

                <div class="col-md-12">
                    <div class="form-group">
                        <asp:Label ID="lblName" runat="server" Text="Nombre de la sucursal:"></asp:Label>
                        <asp:TextBox ID="txtname" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvtxtNombre" ControlToValidate="txtname" CssClass="txt-danger" runat="server" ErrorMessage="Nombre del chofer requerido"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <asp:Label ID="lblStreet" runat="server" Text="Calle:"></asp:Label>
                        <asp:TextBox ID="txtStreet" runat="server" placeholder="Av. Lázaro Cárdenas" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvtxtCalle" ControlToValidate="txtStreet"
                            CssClass="text-danger"
                            runat="server" ErrorMessage="Calle requerida"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <asp:Label ID="lblColony" runat="server" Text="Colonia:"></asp:Label>
                        <asp:TextBox ID="txtColony" runat="server" placeholder="Colonia"
                            CssClass="form-control" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvtxtColony" ControlToValidate="txtColony"
                            CssClass="text-danger" runat="server" ErrorMessage="Colonia requerida"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <asp:Label ID="lblNumber" runat="server" Text="Número:"></asp:Label>
                        <asp:TextBox ID="txtNumber" runat="server" placeholder="27"
                            CssClass="form-control" MaxLength="6"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvtxtNumber" ControlToValidate="txtNumber"
                            CssClass="text-danger" runat="server" ErrorMessage="Número requerido"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <asp:Label ID="lblCP" runat="server" Text="Código Postal:"></asp:Label>
                        <asp:TextBox ID="txtCP" runat="server" placeholder="0000"
                            CssClass="form-control" MaxLength="5"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvtxtCP" ControlToValidate="txtCP"
                            CssClass="text-danger" runat="server" ErrorMessage="Código Postal requerido"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <asp:Label ID="lblLatLang" runat="server" Text="Coordenadas:"></asp:Label>
                        <asp:TextBox ID="txtLatLang" runat="server" placeholder="19.520536, -96.896404"
                            CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <asp:Button ID="btnGuardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
            </div>
        </div>
    </div>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
