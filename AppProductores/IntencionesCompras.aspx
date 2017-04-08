﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IntencionesCompras.aspx.cs" Inherits="AppProductores.IntencionesCompras" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="css/CreateOffer.css" />
<link rel="stylesheet" type="text/css" href="css/Style.css"/>

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
<li><a href="IntencionesCompras.aspx">Intenciones de Compra</a></li>

</ul>
</div>
</li>
<li><a href="#">Tutorials</a>
<div class="sub_menu">
<ul>
<li><a href="#">Asp.net Tutorials</a></li>
<li><a href="#">Jquery Tutorials</a></li>
<li><a href="#">Sql Tutorials</a></li>
<li><a href="#">Other tutorials</a></li>
</ul>
</div>
</li>
<li><a href="#">Contact</a></li>
<li><a href="#">Advertise</a></li>
</ul>
</div>


<div class="form-style-5" runat="server">
        </div>
&nbsp;</div><br />



        <div>

<asp:GridView runat="server" ID="IntencionGrid"
        DataKeyNames="Id" 
        AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="Id"  HeaderText="ID" />
            <asp:BoundField DataField="BuyerId"  HeaderText="Id Comprado" Visible="false" />
            <asp:BoundField DataField="Buyer"  HeaderText=" COmprador" />
            <asp:BoundField DataField="DateCreation"  HeaderText=" Fecha creada" />    
            <asp:BoundField DataField="IntentionsToSellId" Visible="false" />
            <asp:BoundField DataField="ExpirationDate"  HeaderText=" Fecha de Vencimiento" />      
        </Columns>
    </asp:GridView>
</div>



    </form>
