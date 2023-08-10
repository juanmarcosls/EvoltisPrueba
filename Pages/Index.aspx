<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PruebaTecnicaEvoltis.Pages.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Inicio
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form runat="server">
    <br />
    <div class="mx-auto" style="width:300px">
        <h2>Listado de registros</h2>
    </div>
    <br />
    <div class="container">
        <div class="row">
            <div class="col align-self-end">
                <asp:Button runat="server" ID="BtnCreate" CssClass="btn btn-success btn-sm" Text="Crear nuevo empleado" OnClick="BtnCreate_Click"/>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-6">
            <asp:TextBox runat="server" ID="txtSearch" CssClass="form-control" placeholder="Buscar por nombre"></asp:TextBox>
        </div>
            <div class="col-md-2">
        <asp:Button runat="server" Text="Buscar" CssClass="btn btn-primary btn-block" OnClick="btnSearch_Click" />
        </div>
            <div class="col-md-2">
            <asp:Button runat="server" Text="Mostrar todos" CssClass="btn btn-secondary" OnClick="btnShowAll_Click" />
        </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <asp:GridView runat="server" ID="gvusempleados" CssClass="table table-striped table-bordered table-hover">
                        <Columns>
                            <asp:TemplateField HeaderText="Opciones del administrador">
                                <ItemTemplate>
                                    <asp:Button runat="server" Text="Leer" CssClass="btn btn-info btn-sm" ID="BtnRead" OnClick="BtnRead_Click"/>
                                    <asp:Button runat="server" Text="Actualizar" CssClass="btn btn-warning btn-sm" ID="BtnUpdate" OnClick="BtnUpdate_Click"/>
                                    <asp:Button runat="server" Text="Eliminar" CssClass="btn btn-danger btn-sm" ID="BtnDelete" OnClick="BtnDelete_Click"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</form>

</asp:Content>
