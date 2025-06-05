<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ListarCitas.aspx.cs" Inherits="MiFarmacia.pages.Admin.Citas.ListarCitas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <div class="row">
            <br />
            <h3>Citas Agendadas</h3>
            <hr />
            <div class="col-12">
                <button class="btn btn-success btn-xs" onclick="location.href='AltaCita.aspx'; return false;">Agendar cita</button>
            </div>

            <!-- En los ButtonField DataField debe coincidir con el VO -->
            <asp:GridView ID="GVCitas" runat="server"
                CssClass="table table-bordered table-striped table-condensed mt-3"
                AutoGenerateColumns="false"
                DataKeyNames="Id"
                OnRowDeleting="GVCitas_RowDeleting"
                OnRowCommand="GVCitas_RowCommand">
                <Columns>
                    <asp:ButtonField
                        ButtonType="Button"
                        CommandName="Select"
                        ShowHeader="true"
                        Text="Seleccionar"
                        ControlStyle-CssClass="btn btn-success btn-xs" />
                    <asp:CommandField
                        ButtonType="Button"
                        ShowDeleteButton="True"
                        ShowHeader="True"
                        ControlStyle-CssClass="btn btn-danger btn-xs" />


                    <asp:BoundField
                        DataField="Id"
                        HeaderText="Cita"
                        ItemStyle-Width="50px"
                        ReadOnly="true" />

                    <asp:BoundField
                        DataField="DateTypeName"
                        HeaderText="Tipo de cita"
                        ItemStyle-Width="50px" />

                    <asp:BoundField
                        DataField="Email"
                        HeaderText="Correo del paciente"
                        ItemStyle-Width="50px" />
                    <asp:BoundField
                        DataField="Date"
                        HeaderText="Fecha"
                        ItemStyle-Width="50px" />

                    <asp:BoundField
                        DataField="Schedule"
                        HeaderText="Horario"
                        ItemStyle-Width="50px" />

                    <asp:BoundField
                        DataField="Comment"
                        HeaderText="Comentarios"
                        ItemStyle-Width="50px" />

                    <asp:BoundField
                        DataField="LocationName"
                        HeaderText="Sucursal"
                        ItemStyle-Width="50px" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
