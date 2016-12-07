<%-- 
    Document   : Estabelecimentos
    Created on : 12/11/2016, 21:54:39
    Author     : Odirlei

    <%@page import="java.util.List"%>
    <%@page import="br.com.smartk.model.Estabelecimento"%>
    <%@page import="br.com.smartk.model.EstabelecimentoDao"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="pt-br">    
    <head>
        <title>Estabelecimentos - SmartK - Sistema de Gestão do SmartK</title>
	<meta name="description" content="Sistema de Gestão do SmartK" />

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Styles -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<link rel="stylesheet" href="css/style-smartk.css" >        
    </head>
    
    <body>          
        <c:import url="Cabecalho.jsp"></c:import>            
        
        <div id="breadcrumb" class="dark-primary-color">
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="index.html" title="Tela Inicial">Home</a></li>
                    <li class="active"><a href="#" title="Lista de Estabelecimentos">Estabelecimento</a></li>
		</ol>
            </div>
	</div>
        
        <div id="wrapper" class="wrapper bg-default">
            <header class="bg-light">
                <div class="container">
                    <h1>Estabelecimentos</h1>
                    <h2>A Lista de Estabelecimentos inseridos no SmartK</h2>
                </div>
            </header>
            
            <div class="container listagem-default">
                <jsp:useBean id="dao" class="br.com.smartk.model.EstabelecimentoDao"></jsp:useBean>
                
                <table class="table  table-bordered table-hover">
                    <tr class="info"> 
                        <td>Códgo</td>
                        <td>Nome</td>                                
                    </tr>                             
                    <c:forEach var="estabelecimento" items="${dao.lista}">            
                        <tr>
                            <td>${estabelecimento.id}</td>                                    
                            <td>${estabelecimento.nome}</td>                                    
                        </tr>
                    </c:forEach>                                            
                </table>
            </div>   
        </div>        
                   
        <c:import url="Rodape.jsp"></c:import>
        
    </body>

</html>
