<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ListarResumenOrdenes.aspx.cs" Inherits="MiFarmacia.pages.Admin.Ordenes.ListarResumenOrdenes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
     <div class="container mt-5">
    <h2 class="mb-4">Resumen de Órdenes</h2>

    <asp:GridView ID="gvOrdersSummary" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered"
        EmptyDataText="No hay órdenes registradas aún." GridLines="None">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ID Orden" />
            <asp:BoundField DataField="CustomerEmail" HeaderText="Email Cliente" />
            <asp:BoundField DataField="OrderDate" HeaderText="Fecha de Orden" DataFormatString="{0:yyyy-MM-dd}" />
            <asp:BoundField DataField="ProductName" HeaderText="Producto" />
            <asp:BoundField DataField="Quantity" HeaderText="Cantidad" />
            <asp:BoundField DataField="OrderPrice" HeaderText="Precio Unitario" DataFormatString="{0:C}" />
            <asp:BoundField DataField="SubTotal" HeaderText="Subtotal" DataFormatString="{0:C}" />
        </Columns>
    </asp:GridView>
</div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
