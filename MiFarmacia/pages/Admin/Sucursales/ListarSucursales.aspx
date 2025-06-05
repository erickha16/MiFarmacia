<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ListarSucursales.aspx.cs" Inherits="MiFarmacia.pages.Admin.Sucursales.ListarSucursales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
        <div class="container">
    <div class="row">
        <br />
        <h3>Sucursales</h3>
        <hr />
        <div class="col-12">
            <button class="btn btn-success btn-xs" onClick="location.href='AltaSucursal.aspx'; return false;">Agregar</button>
        </div>

        <!-- En los ButtonField DataField debe coincidir con el VO -->
        <asp:GridView ID="GVLocations" runat="server"
            CssClass="table table-bordered table-striped table-condensed mt-3" 
            AutoGenerateColumns="false" 
            DataKeyNames="Id"
            OnRowCommand="GVLocations_RowCommand"
            OnRowDeleting="GVLocations_RowDeleting"
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

                <asp:BoundField
                    DataField="Id" 
                    HeaderText="Sucursal"
                    ItemStyle-Width="50px"
                    ReadOnly="true" />

                <asp:BoundField
                    DataField="Name"
                    HeaderText="Nombre asignado"
                    ItemStyle-Width="50px"
                     />

                <asp:BoundField
                    DataField="Street"
                    HeaderText="Calle"
                    ItemStyle-Width="50px"
                    />
                <asp:BoundField
                    DataField="Colony"
                    HeaderText="Colonia"
                    ItemStyle-Width="50px" />

                <asp:BoundField
                    DataField="Number"
                    HeaderText="Numero"
                    ItemStyle-Width="50px" />

                <asp:BoundField
                    DataField="CP"
                    HeaderText="Código Postal"
                    ItemStyle-Width="50px" />

                <asp:BoundField
                    DataField="LatLang"
                    HeaderText="Coordenadas"
                    ItemStyle-Width="50px" />

            </Columns>
        </asp:GridView>
    </div>
</div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
