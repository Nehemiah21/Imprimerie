<%@page import="modele.*"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Vector<Service> all_Service = Service.allService(); 
%>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Imprimerie</title>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/listeService.css">
</head>

<body>

<%-- HEADER --%>
    <jsp:include page="../partie/header.jsp" />
<%-- HEADER --%>

    <div class="article-list">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">Listes des services</h2>
                <p class="text-center">
                    L'imprimerie est la grande restitutrice du monde moral et intellectuel.
                    Sous la forme imprimerie, la pensée est plus impérissable que jamais ; elle est volatile, insaisissable, indestructible.
                </p>
            </div>
            <div class="row articles">
                <% for(int i = 0 ; i < all_Service.size() ; i ++){ %>
                    <div class="col-sm-6 col-md-4 item">
                        <div class="zoomin frame each-block">
                            <img src="../assets/img/service/<% out.println(all_Service.get(i).getImage()); %>">
                        </div>
                        <h3 class="name"><% out.println(all_Service.get(i).getNom()); %></h3>
                        <p class="description">Description</p>
                        <a class="action" href="#"><i class="fa fa-smile-o"></i></a>
                    </div>
                <% } %>
            </div>
        </div>
    </div>

<%-- FOOTER --%>
    <jsp:include page="../partie/footer.jsp" />
<%-- FOOTER --%>

    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>