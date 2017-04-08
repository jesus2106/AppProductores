<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HistorialVenta.aspx.cs" Inherits="AppProductores.HistorialVenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="css/CreateOffer.css" />
<link rel="stylesheet" type="text/css" href="css/Style.css"/>
<link rel="stylesheet" type="text/css" href="css/Grid.css"/>

<title>Create Offer</title>

<script src="http://code.jquery.com/jquery-1.8.2.js" type="text/javascript"></script>
<script type="text/javascript">
$(function () {
$('.menu ul li').hover(
function () {
$('.sub_menu', this).stop(true, true).slideDown(); /*slideDown the subitems on mouseover*/
}, function () {
$('.sub_menu', this).stop(true, true).slideUp();  /*slideUp the subitems on mouseout*/
});
});
</script>
    </head>
<body>
    <form id="form1" runat="server">
<div class="menu">
<ul>
<li><a href="Home.aspx">Home</a></li>
<li><a href="#">Oferta</a>
<div class="sub_menu">
<ul>
<li><a href="CreateOffer.aspx">Crear Oferta</a></li>



</ul>
</div>
</li>
<li><a href="#">Compras</a>
<div class="sub_menu">
<ul>
<li><a href="IntencionesCompras.aspx">Intenciones de Compra</a></li>
<!--<li><a href="#">Jquery Tutorials</a></li>
<li><a href="#">Sql Tutorials</a></li>
<li><a href="#">Other tutorials</a></li>-->
</ul>
</div>
</li>
<!--<li><a href="#">Contact</a></li>-->
<li><a href="HistorialVenta.aspx">Historial</a></li>
</ul>
</div>


<div class="form-style-5" runat="server">
        </div>
&nbsp;</div><br />



        <div>

<asp:GridView runat="server" ID="HistoryGrid"
        DataKeyNames="Id" 
        AutoGenerateColumns="false"  CssClass="mydatagrid" PagerStyle-CssClass="pager"  HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True"  >
        <Columns>
            <asp:BoundField DataField="IntentionBuyId"  HeaderText="ID" />
            <asp:BoundField DataField="IntentionSellId"  HeaderText="Intension ID" />
            <asp:BoundField DataField="BuyerId"  HeaderText="Comprador ID" />    
            <asp:BoundField DataField="CreationDate"  HeaderText="Fecha Creada" />
            <asp:BoundField DataField="Buyer" HeaderText="Nombre Comprador" />
            <asp:BoundField DataField="SellerId"  HeaderText="Vendedor ID" />     
            <asp:BoundField DataField="Seller"  HeaderText="Nombre Vendedor" />           
        </Columns>
        <EditRowStyle HorizontalAlign="Center" />
        <HeaderStyle CssClass="header" />
        <PagerStyle CssClass="pager" />
        <RowStyle CssClass="rows" />
    </asp:GridView>
            <br />
            <br />
</div>

        <div>


        </div>


    </form>


