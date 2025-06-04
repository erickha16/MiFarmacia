<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ListarProductos.aspx.cs" Inherits="MiFarmacia.pages.Admin.Productos.ListarProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
    <div class="row">
        <br />
        <h3>Productos</h3>
        <hr />
        <div class="col-12">
            <button class="btn btn-success btn-xs" onClick="location.href='AltaProducto.aspx'; return false;">Agregar</button>
        </div>

        <!-- En los ButtonField DataField debe coincidir con el VO -->
        <asp:GridView ID="GVProductos" runat="server"
            CssClass="table table-bordered table-striped table-condensed mt-3" 
            AutoGenerateColumns="false" 
            DataKeyNames="Id"
            OnRowDeleting="GVProductos_RowDeleting"
            OnRowCommand="GVProductos_RowCommand"
            >
            <Columns>
                <asp:ButtonField
                    ButtonType="Button"
                    CommandName="Select"
                    ShowHeader="true"
                    Text="Seleccionar"
                    ControlStyle-CssClass="btn btn-success btn-xs"
                    />
                <asp:CommandField
                    ButtonType="Button"
                    ShowDeleteButton="True"
                    ShowHeader="True"
                    ControlStyle-CssClass="btn btn-danger btn-xs" />

                <asp:ImageField
                    HeaderText="Foto"
                    ReadOnly="True"
                    ItemStyle-Width="120px"
                    ControlStyle-Width="120px"
                    ControlStyle-Height="90px"
                    DataImageUrlField="URLFoto">
                </asp:ImageField>
                
                <asp:BoundField
                    DataField="Id" 
                    HeaderText="Producto"
                    ItemStyle-Width="50px"
                    ReadOnly="true" />

                <asp:BoundField
                    DataField="Name"
                    HeaderText="Nombre del Producto"
                    ItemStyle-Width="50px"
                     />

                <asp:BoundField
                    DataField="Category"
                    HeaderText="Categoria"
                    ItemStyle-Width="50px"
                    />
                <asp:BoundField
                    DataField="ProductPrice"
                    HeaderText="Precio del producto ($Mxn)"
                    ItemStyle-Width="50px" />

                <asp:BoundField
                    DataField="Stock"
                    HeaderText="Unidades disponibles"
                    ItemStyle-Width="50px" />

            </Columns>
        </asp:GridView>
    </div>
</div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
