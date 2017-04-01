<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="AppProductores.Prueba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>

  <link rel="stylesheet" type="text/css" href="css/Style.css"/>

    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>

</head>
<body >
   
    
    <div>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>


    <div class="form-style-5" runat="server" >
<form>
<fieldset class="auto-style1">
<legend><span class="number">1</span> Informacion del Producto</legend>

<input type="text" name="field1" placeholder="Cantidad *">

<input type="email" name="field2" placeholder="Precio Por Unidad *">

<textarea name="field3" placeholder="ID Producto"></textarea>

<textarea name="field3" placeholder="Tipo de Unidad"></textarea>


<input type="submit" value="Apply" />
    
</form>
</div>





</body>
</html>
