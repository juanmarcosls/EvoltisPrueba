<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="PruebaTecnicaEvoltis.Pages.CRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    CRUD
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
    <div class="mx-auto" style="width: 250px">
        <asp:Label runat="server" CssClass="h2" ID="lbltitulo"></asp:Label>
    </div>
    <form runat="server" class="h-100 d-flex align-items-center justify-content-center">
        <div>
            <div class="mb-3">
                <label class="form-label">Nombre</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbnombre" placeholder="Ej: Juan Marcos"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="tbnombre" ErrorMessage="Solo se permiten letras" ValidationExpression="^[a-zA-Z]+$" />
            </div>
            <div class="mb-3">
                <label class="form-label">Apellido</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbapellido" placeholder="Ej: Lemos Smit"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="tbapellido" ErrorMessage="Solo se permiten letras" ValidationExpression="^[a-zA-Z]+$" />
            </div>
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbemail" placeholder="Ej: juanmarcoslemossmit@gmail.com"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="tbemail" ErrorMessage="Ingrese una dirección de correo electrónico válida" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" />
            </div>
            <div class="mb-3">
                <label class="form-label">Salario</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbsalario" placeholder="Ej: 50000"></asp:TextBox>
                 <asp:RegularExpressionValidator runat="server" ControlToValidate="tbsalario" ErrorMessage="Solo se permiten números" ValidationExpression="^[0-9]+$" />
            </div>
            <asp:Button runat="server" CssClass="btn btn-primary" ID="BtnCreate" Text="Create" Visible="false" OnClick="BtnCreate_Click" />
            <asp:Button runat="server" CssClass="btn btn-primary" ID="BtnUpdate" Text="Update" Visible="false" onclick="BtnUpdate_Click"/>
            <asp:Button runat="server" CssClass="btn btn-primary" ID="BtnDelete" Text="Delete" Visible="false" OnClick="BtnDelete_Click" />
            <asp:Button runat="server" CssClass="btn btn-primary btn-dark" ID="BtnVolver" Text="Volver" Visible="True" OnClick="BtnVolver_Click" />
        </div>
    </form>
</asp:Content>
