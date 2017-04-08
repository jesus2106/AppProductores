<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AppProductores.Home" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Home</title>
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
<style type="text/css">
.menu{
width:600px;
font-family: verdana, Segoe UI;
background-color:#B34C00;
margin:0 auto;
height:38px;
border: 1px solid #B34C00;
border-radius: 4px; /*To make the corners rounded in IE*/
-moz-border-radius: 4px; /*this is for mozilla*/
-webkit-border-radius: 4px; /*chrome and other browsers*/
box-shadow: 0 1px 1px #dddddd inset;
-moz-box-shadow: 0 1px 1px #dddddd inset;
-webkit-box-shadow: 0 1px 1px #dddddd inset;
}
.menu ul{
padding:0px;
margin: 0px;
list-style: none;
}
.menu ul li{
display: inline-block;
float:left;
position: relative;
}
.menu ul li a{
color:#ffffff;
text-decoration: none;
display: block;
padding:10px 15px;
}
.menu ul li a:hover{
background-color: #666666;
}
.sub_menu{
position: absolute;
background-color: #666666;
width:200px;
top:38px;
left:0px;
display:none; /*hide the subitems div tag initially*/
border-bottom:4px solid #B34C00; /*just to add a little more good look*/
}
.sub_menu ul li{
width:200px;
}
.sub_menu ul li a{
color:#ffffff;
text-decoration: none;
display: block;
padding:10px 15px;
}
.sub_items ul li a:hover{
background-color: #777777;
}
</style>
</head>
<body>
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
</body>
</html>
