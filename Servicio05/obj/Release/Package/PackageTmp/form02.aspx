<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form02.aspx.cs" Inherits="Servicio05.form02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script
  src="https://code.jquery.com/jquery-3.4.1.js"></script>

    <script>
        $(function () {
            $("#Sumando").click(function () {
                var nume1 = "'"+$("#numero1").val()+"'";
                var nume2 = "'" + $("#numero2").val() + "'";
                
                $.ajax({
                    type:"POST",
                    url: "http://localhost:51708/Service.asmx/Sumar",
                    data: { num1: nume1, num2: nume2 },
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (result) {
                        var numero = (typeof result.d) == 'string' ? eval('(' + result.d + ')') : result.d;
                        console.log(result.d);
                        //var data =""+result.d;
                        $("#SumaTotal").html(numero);
                    }
                })
            })
        })
        
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="text" name="name" id="numero1"/>
            <input type="text" name="name" id="numero2" />

            <input type="button" id="Sumando" name="name" value="Sumar" />
            <hr />
            <p id="SumaTotal"></p>
            </div>
    </form>
</body>

</html>
