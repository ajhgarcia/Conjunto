<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Centro" runat="server">
    <h4>Productos:</h4>

    <asp:TextBox ID="txtBusqueda" runat="server" placeholder="escribe aquí que quieres buscar"></asp:TextBox>
    <asp:Button ID="botonCargar" runat="server" Text="Cargar" CssClass="btn btn-primary" OnClick="botonCargar_Click" />

    <asp:GridView ID="tablaProductos" runat="server" CssClass="table" AutoGenerateColumns="false">
        <Columns>
            <asp:ImageField DataImageUrlField="url_imagen" ControlStyle-Width="180" />
            <asp:BoundField DataField="marca" HeaderText="Marca" />
            <asp:BoundField DataField="nombre" HeaderText="Producto" />
            <asp:BoundField DataField="precio" HeaderText="Oferta para ti" />

        </Columns>

    </asp:GridView>

</asp:Content>
