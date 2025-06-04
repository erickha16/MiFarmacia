<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EditarProducto.aspx.cs" Inherits="MiFarmacia.pages.Admin.Productos.EditarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">

    <h3>Editar Producto</h3>
    <h4>ID del Producto seleccionado:
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h4>

    <div class="col-md-12">
        <div class="form-group">

            <asp:Label ID="lblId" runat="server" Text=""></asp:Label>

            <asp:Label ID="lblNombre" runat="server">Producto</asp:Label>

            <div class="form-group">
                <asp:DropDownList 
                    ID="DDLCategories" 
                    runat="server"
                    CssClass="form-control">
                </asp:DropDownList>
                <asp:Label ID="lblResultado" runat="server" />
                <asp:RequiredFieldValidator ID="rfvDDLCategories" ControlToValidate="DDLCategories" CssClass="txt-danger" runat="server" ErrorMessage="Categoría Requerida"></asp:RequiredFieldValidator>
            </div>

            <asp:Label ID="lblProductPrice" runat="server">Precio del Producto</asp:Label>

            <asp:TextBox ID="txtProductPrice" runat="server" placeholder="$00.00"
                CssClass="form-control" />

            <asp:Label ID="lblStock" runat="server">Unidades disponibles:</asp:Label>

            <asp:TextBox ID="txtStock" runat="server" placeholder="0"
                CssClass="form-control" />

            <asp:Label ID="lblSubeImagen" runat="server">Seleccionar Foto</asp:Label>
            <input type="file" id="SubeImagen" runat="server" class="btn btn-file" />

            <asp:Button ID="btnSubeImagen" CssClass="btn btn-primary" Text="Subir" runat="server" OnClick="btnSubeImagen_Click"
                />

            <asp:Label ID="lblFoto" runat="server">Foto</asp:Label>
            <asp:Image ID="imgFotoProducto" Width="150" Height="100" runat="server" />
            <asp:Image ID="imgFoto" Width="100" Height="100" runat="server" />
            <asp:Label ID="urlFoto" runat="server">Aquí debe aparecer el path de la foto que seleccionaste
            </asp:Label>

            <asp:Button ID="btnGuardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click"/>
        </div>
    </div>
</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
