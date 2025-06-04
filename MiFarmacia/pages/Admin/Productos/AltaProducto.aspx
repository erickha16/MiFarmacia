<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AltaProducto.aspx.cs" Inherits="MiFarmacia.pages.Admin.Productos.AltaProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
    <div class="row">
        <h3>Agregar Producto</h3>
        <hr />

        <div class="col-md-12">
            <div class="form-group">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtNombre" ControlToValidate="txtNombre" CssClass="txt-danger" runat="server" ErrorMessage="Nombre del chofer requerido"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <asp:DropDownList 
                    ID="DDLCategories" 
                    runat="server"
                    CssClass="form-control">
                </asp:DropDownList>
                <asp:Label ID="lblResultado" runat="server" />
                <asp:RequiredFieldValidator ID="rfvDDLCategories" ControlToValidate="DDLCategories" CssClass="txt-danger" runat="server" ErrorMessage="Categoría Requerida"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="col-md-12">
            <div class="form-group">
                <asp:Label ID="lblProductPrice" runat="server" Text="Precio del producto"></asp:Label>
                <asp:TextBox ID="txtProductPrice" runat="server" placeholder="$00.00" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtProductPrice"
                    CssClass="text-danger"
                    runat="server" ErrorMessage="Precio del producto requerido"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="col-md-12">
            <div class="form-group">
                <asp:Label ID="lblStock" runat="server" Text="En existencia:"></asp:Label>
                <asp:TextBox ID="txtStock" runat="server" placeholder="50"
                    CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtstock" ControlToValidate="txtStock"
                    CssClass="text-danger" runat="server" ErrorMessage="Necesario indicar la cantidad en existencia del producto."></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">

                <asp:Label ID="lblSubirImagen" runat="server" Text="Seleccionar Foto"></asp:Label>
                <div class="row">
                    <div class="col-md-3">
                        <input type="file" id="SubeImagen" runat="server" class="btn btn-file" />
                    </div>
                    <div class="col-md-9">
                        <asp:Button ID="btnSubeImagen" CssClass="btn btn-primary" Text="Subir" runat="server" OnClick="btnSubeImagen_Click"
                            />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <asp:Label ID="lblFoto" runat="server">Foto</asp:Label>
                <asp:Image ID="imgFotoProducto" Width="150" Height="100" runat="server" />
                <asp:Label ID="urlFoto" runat="server">Aquí aparece el path de la foto que seleccionaste
                </asp:Label>
            </div>
        </div>
        <div class="col-md-12 col-md-offset-5">
            <div class="form-group">
                <asp:Button ID="btnGuardar" Visible="false" CssClass="btn btn-primary" runat="server"
                    Text="Guardar" OnClick="btnGuardar_Click" />
            </div>
        </div>
        </div>
    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
