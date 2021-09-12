<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EjercicioPropuesto.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sass & Css</title>
    <link rel="stylesheet" href="styles.css" />
    <link rel="stylesheet" href="main.css" />
</head>
<body>
    <div class="main-container">
        <form id="form1" runat="server">
        <div class="form-container">
            <div class="views-controller">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" CssClass="option-nav">
                    <asp:ListItem Value="0">Producto</asp:ListItem>
                    <asp:ListItem Value="1">Cliente</asp:ListItem>
                    <asp:ListItem Value="2">Proveedor</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="view-container">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    
                    <div class="grid-container">
                        <h2>Cargar informacion de productos</h2>
                        <div class="grid-item">
                            <asp:Label ID="lblNombreProducto" runat="server" Text="Nombre" CssClass="label"></asp:Label>
                            <asp:TextBox ID="txtNombreProducto" runat="server" CssClass="textbox"></asp:TextBox>                       
                        </div>
                        <div class="grid-item">
                            <asp:Label ID="lblStockProducto" runat="server" Text="Stock" CssClass="label"></asp:Label>
                            <asp:TextBox ID="txtStockProducto" runat="server" CssClass="textbox"></asp:TextBox>
                        </div>
                        <div class="grid-item">
                            <asp:Label ID="lblPrecioProducto" runat="server" Text="Precio" CssClass="label"></asp:Label>
                            <asp:TextBox ID="txtPrecioProducto" runat="server" CssClass="textbox"></asp:TextBox>
                        </div>
                        <div class="grid-item">
                            <asp:Label ID="lblImagenProducto" runat="server" Text="Agregar imagen referencial" CssClass=".label"></asp:Label>
                            <asp:FileUpload ID="loadImagenProducto" runat="server"/>
                        </div>
                        <div class="grid-item">
                             <asp:Button ID="btnSaveProducto" runat="server" Text="Guardar" OnClick="btnSaveProducto_Click" CssClass="btn" />
                        </div>
                    </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <div class="grid-container">
                        <h2>Cargar informacion de cliente</h2>
                        <div class="grid-item">
                            <asp:Label ID="lblNombreCliente" runat="server" Text="Nombre" CssClass="label"></asp:Label>
                            <asp:TextBox ID="txtNombreCliente" runat="server" CssClass="textbox"></asp:TextBox>

                        </div>
                        <div class="grid-item">
                            <asp:Label ID="lblApellidosCliente" runat="server" Text="Apellidos" CssClass="label"></asp:Label>
                            <asp:TextBox ID="txtApellidosCliente" runat="server" CssClass="textbox"></asp:TextBox>
                        </div>
                        <div class="grid-item">
                            <asp:Label ID="lblDireccionCliente" runat="server" Text="Direccion" CssClass="label"></asp:Label>
                            <asp:TextBox ID="txtDireccionCliente" runat="server" CssClass="textbox"></asp:TextBox>
                        </div>
                        <div class="grid-item">
                            <asp:Label ID="lblTelefonoCliente" runat="server" Text="Telefono" CssClass="label"></asp:Label>
                            <asp:TextBox ID="txtTelefonoCliente" runat="server" CssClass="textbox"></asp:TextBox>
                        </div>
                        <div class="grid-item">
                            <asp:Label ID="lblFotoCliente" runat="server" Text="Agregar foto" CssClass="label"></asp:Label>
                            <asp:FileUpload ID="loadFotoCliente" runat="server"/>
                        </div>
                        <asp:Button ID="btnSaveCliente" runat="server" Text="Guardar" OnClick="btnSaveCliente_Click" CssClass="btn"/>
                    </div>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <div class="grid-container">
                        <h2>Cargar informacion proveedor</h2>
                        <div class="grid-item">
                            <asp:Label ID="lblNombreProveedor" runat="server" Text="Nombre" CssClass="label"></asp:Label>
                            <asp:TextBox ID="txtNombreProveedor" runat="server" CssClass="textbox"></asp:TextBox>
                        </div>
                        <div class="grid-item">
                            <asp:Label ID="lblRucProveedor" runat="server" Text="RUC" CssClass="label"></asp:Label>
                            <asp:TextBox ID="txtRucProveedor" runat="server" CssClass="textbox"></asp:TextBox>
                        </div>
                        <div class="grid-item">
                            <asp:Label ID="lblDireccionProveedor" runat="server" Text="Direccion" CssClass="label"></asp:Label>
                            <asp:TextBox ID="txtDireccionProveedor" runat="server" CssClass="textbox"></asp:TextBox>
                        </div>
                        <div class="grid-item">
                            <asp:Label ID="lblLogoProveedor" runat="server" Text="Agregar logo" CssClass="label"></asp:Label>
                            <asp:FileUpload ID="loadLogoProveedor" runat="server"/>
                        </div>
                        <div class="grid-item">
                            <asp:Button ID="btnSaveProveedor" runat="server" Text="Guardar" CssClass="btn" OnClick="btnSaveProveedor_Click" />
                        </div>
                    </div>
                </asp:View>
            </asp:MultiView>
                <div class="result-container">
                    <div class="result-data-container">
                    <textarea id="lblResult" cols="20" rows="2" runat="server"></textarea>   
                    </div>
                    <div class="result-img-container">
                        <asp:Image ID="imgResult" runat="server" />
                    </div>
                </div>                
            </div>
        </div>
    </form>
    </div>
    
</body>
</html>
