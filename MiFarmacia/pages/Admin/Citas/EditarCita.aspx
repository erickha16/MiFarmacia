<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EditarCita.aspx.cs" Inherits="MiFarmacia.pages.Admin.Citas.EditarCita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
    <div class="row">
        <h3>Modificar Cita Agendada</h3>
        <hr />

        <div class="col-md-12">
            <div class="form-group">
                <asp:DropDownList
                    ID="DDLTipoCitas"
                    runat="server"
                    CssClass="form-control">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvDDLTipoCitas" ControlToValidate="DDLTipoCitas" CssClass="txt-danger" runat="server" ErrorMessage="Se debe de especificar el tipo de cita"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="col-md-12">
            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" Text="Email del cliene"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="example@gmail.com" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtEmail" ControlToValidate="txtEmail"
                    CssClass="text-danger"
                    runat="server" ErrorMessage="Se debe colocar el contacto del cliente"></asp:RequiredFieldValidator>
            </div>
        </div>


        <div class="col-md-12">
            <div class="form-group">
                <asp:Label ID="Fecha" runat="server" Text="Elija la fecha de la cita"></asp:Label>
                <asp:TextBox ID="txtFecha" runat="server" placeholder="dd-mm-aaaa"
                    CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtFecha" ControlToValidate="txtFecha"
                    CssClass="text-danger" runat="server" ErrorMessage="Se nececita agendar la cita en una fecha"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="col-md-12">
            <div class="form-group">
                <asp:DropDownList
                    ID="DDLHorarios"
                    runat="server"
                    CssClass="form-control">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvDDLHorarios" ControlToValidate="DDLHorarios" CssClass="txt-danger" runat="server" ErrorMessage="Se debe de especificar un horario"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="col-md-12">
            <div class="form-group">
                <asp:Label ID="Comentario" runat="server" Text="Elija la fecha de la cita"></asp:Label>
                <asp:TextBox ID="txtComentario" runat="server" placeholder="Algún comentario que debería saber el especialista"
                    CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="col-md-12">
            <div class="form-group">
                <asp:DropDownList
                    ID="DDLSucursales"
                    runat="server"
                    CssClass="form-control">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvDDLSucursales" ControlToValidate="DDLSucursales" CssClass="txt-danger" runat="server" ErrorMessage="Especificque la sucursal donde será la cita"></asp:RequiredFieldValidator>
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
