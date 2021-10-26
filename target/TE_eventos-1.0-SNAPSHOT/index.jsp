<%@page import="com.emergentes.modelo.Seminarios"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Seminarios> lista = (List<Seminarios>)request.getAttribute("lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>seminarios</title>
    </head>
    <body >
        
        <table border="1" bgcolor="black" align="center">
            <tr>
                <td bgcolor=#00FFFF align="center">
            <h3>SEGUNDO  PARCIAL  TEM-742</h3>
            <h4>NOMBRE: Jessica Brisa Quispe Quispe<br><br>
                CI: 9920811 L.P.</h4>
            </td>
            </tr>
        </table><br><br>
        
         <h1 align="center">REGISTRO DE SEMINARIOS</h1>
        <p>
            <a href="MainController?op=nuevo">Nuevo</a>
        </p>
        <table  BGCOLOR="GRAY">
            
                <tr bgcolor="ORANGE">
                    <th>Id</th>
                    <th>Titulo</th>
                    <th>Expositor</th>
                    <th>Fecha</th>
                    <th>Hora</th>
                    <th>Cupos</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${lista}">
                    <tr bgcolor=#D3D3D3>
                    <td>${item.id}</td>
                    <td>${item.titulo}</td>
                    <td>${item.expositor}</td>
                    <td>${item.fecha}</td>
                    <td>${item.hora}</td>
                    <td>${item.cupo}</td>
                    <td><a href="MainController?op=editar&id=${item.id}">Editar</a></td>
                    <td><a href="MainController?op=eliminar&id=${item.id}"
                           onclick="return(confirm('Esta Seguro de eliminar?'))">Eliminar</a></td>
                </tr>
                </c:forEach>
                
        </table>
    </body>
</html>
