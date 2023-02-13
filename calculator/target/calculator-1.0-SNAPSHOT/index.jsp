<%
    float resultado =0;
    float n1 = 0;
    float n2 = 0;

    if(request.getMethod() == "POST"){
        n1 = Float.parseFloat(request.getParameter("n1"));
        n2 = Float.parseFloat(request.getParameter("n2"));

        if(request.getParameter("somar") != null){
            resultado = n1+n2;
        }else if (request.getParameter("sub") != null) {
            resultado = n1-n2;
        }else if (request.getParameter("mul") != null) {
            resultado = n1*n2;
        }else if (request.getParameter("div") != null) {
            resultado = n1/n2;
        }
    }
%>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Calculadora simples</title>
</head>
<body>
<h1><%= "Calculadora" %>
</h1>
<br/>
<form method="post">
    Primeiro valor: <br>
    <label>
        <input type="number" required name="n1" value="<%=n1%>">
    </label><br>
    Segundo valor: <br/>
    <label>
        <input type="number" required name="n2" value="<%=n2%>">
    </label><br>
    <input type="submit" value="somar" name="somar">
    <input type="submit" value="sub" name="sub">
    <input type="submit" value="mul" name="mul">
    <input type="submit" value="div" name="div">
    <br> <br/>
    Resultado:"<%=resultado%>"

</form>

</body>
</html>