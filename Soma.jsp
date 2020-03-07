<%-- 
    Document   : Soma
    Created on : 02/03/2020, 15:53:44
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AA</title>
    </head>
    <body>
    <a href= 'index.html'>Voltar</a>
    <h1>Amortização Americana</h1>
    <%
    double total = Double.parseDouble(request.getParameter("total"));
    float taxa = Float.parseFloat(request.getParameter("taxa"));
    int parcela = Integer.parseInt(request.getParameter("parcela"));
    double porc = (taxa/100)*total;
    double last = (parcela*porc)+total;
    int semilast = parcela-1;
    %>
    <p>
        <%=semilast%> parcelas de <%=porc%> e a ultima de <%=last%>
    </p>
    </body>
</html>
