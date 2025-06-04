<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ListarCategorias.aspx.cs" Inherits="MiFarmacia.pages.Admin.ListarCategorias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <div class="row">
            <br />
            <h3>Categorias</h3>
            <hr />
            <div class="col-12">
                <button class="btn btn-success btn-xs" onClick="location.href='AltaCategorias.aspx'; return false;">Agregar</button>
            </div>

            <!-- En los ButtonField DataField debe coincidir con el VO -->
            <asp:GridView ID="GVCategorias" runat="server"
                CssClass="table table-bordered table-striped table-condensed mt-3" 
                AutoGenerateColumns="false" 
                DataKeyNames="Id"
                OnRowDeleting="GVCategorias_RowDeleting"
                OnRowEditing="GVCategorias_RowEditing"
                OnRowUpdating ="GVCategorias_RowUpdating"
                OnRowCancelingEdit="GVCategorias_RowCancelingEdit"
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
                        DataField="Id" 
                        HeaderText="Categoria"
                        ItemStyle-Width="50px"
                        ReadOnly="true" />

                    <asp:BoundField
                        DataField="Name"
                        HeaderText="Nombre"
                        ItemStyle-Width="50px"
                         />

                    <asp:BoundField
                        DataField="Description"
                        HeaderText="Descripción"
                        ItemStyle-Width="50px"
                        />

                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
