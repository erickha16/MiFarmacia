<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="InfoAdmin.aspx.cs" Inherits="MiFarmacia.pages.Admin.Admins.InfoAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
    <div class="row">
        <br />
        <h3>Categorias</h3>
        <hr />
        <div class="col-12">
            <button class="btn btn-success btn-xs" onClick="location.href='AltaAdmins.aspx'; return false;">Agregar</button>
        </div>

        <!-- En los ButtonField DataField debe coincidir con el VO -->
        <asp:GridView ID="GVAdmins" runat="server"
            CssClass="table table-bordered table-striped table-condensed mt-3" 
            AutoGenerateColumns="false" 
            DataKeyNames="Id"
            OnRowDeleting="GVAdmins_RowDeleting"
            OnRowEditing="GVAdmins_RowEditing"
            OnRowUpdating ="GVAdmins_RowUpdating"
            OnRowCancelingEdit="GVAdmins_RowCancelingEdit"
            >
            <Columns>
                <asp:CommandField
                    ButtonType="Button"
                    ShowDeleteButton="True"
                    ShowHeader="True"
                    ControlStyle-CssClass="btn btn-danger btn-xs" />

                <asp:CommandField
                    ButtonType="Button"
                    ShowEditButton="True"
                    ShowHeader="True"
                    ControlStyle-CssClass="btn btn-primary btn-xs" />
                
                <asp:BoundField
                    DataField="ID" 
                    HeaderText="Administrador"
                    ItemStyle-Width="50px"
                    ReadOnly="true" />

                <asp:BoundField
                    DataField="Name"
                    HeaderText="Nombre"
                    ItemStyle-Width="50px"
                     />

                <asp:BoundField
                    DataField="Password"
                    HeaderText="Contraseña"
                    ItemStyle-Width="50px"
                    />
            </Columns>
        </asp:GridView>
    </div>
</div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
