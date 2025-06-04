<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AltaCategorias.aspx.cs" Inherits="MiFarmacia.pages.Admin.Categorias.AltaCategorias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
    <div class="row">
        <h3>Agregar Categoría de productos</h3>
        <hr />

        <div class="col-md-12">
            <div class="form-group">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtNombre" ControlToValidate="txtNombre" CssClass="txt-danger" runat="server" ErrorMessage="Nombre de la categoría requerido"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion"></asp:Label>
                <asp:TextBox ID="txtDescripcion" runat="server" placeholder="Descripcion de la categoría" MaxLength="250"
                    CssClass="form-control">
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtDescripcion" ControlToValidate="txtDescripcion" CssClass="text-danger" runat="server" ErrorMessage="Descripción quererida"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="col-md-12 col-md-offset-5">
            <div class="form-group">
                <asp:Button ID="btnGuardar" CssClass="btn btn-primary" runat="server"
                    Text="Guardar" OnClick="btnGuardar_Click" />
            </div>
        </div>
        </div>
    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
