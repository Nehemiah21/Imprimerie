<%@page import="modele.*"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Vector<Specialite> all_Specialite = Specialite.allSpecialite();
    Vector<Niveau> all_Niveau = Niveau.allNiveau();
%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Imprimerie</title>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/addEmployer.css">
    <!-- IMAGE -->
    <link rel="stylesheet" href="../assets/css/Profile-Edit-Form.css"> 
    <!-- IMAGE -->
</head>
<body>
<%-- HEADER --%>
    <jsp:include page="../partie/header.jsp" />
<%-- HEADER --%>
    <div class="container profile profile-view" id="profile">
        <div class="row">
            <div class="col-md-12 alert-col relative">
                <div class="alert alert-info alert-dismissible absolue center" role="alert"><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button><span>Profile save with success</span></div>
            </div>
        </div>
        <form>
            <div class="row profile-row">
                <div class="col-md-4 relative">
                    <div class="avatar">
                        <div class="avatar-bg center"></div>
                    </div><input class="form-control form-control" type="file" name="avatar-file">
                </div>
                <div class="col-md-8">
                    <h1>Inscription employer</h1>
                    <hr>
                    <div class="row">
                        <div class="col-sm-12 col-md-6">
                            <div class="form-group mb-3"><label class="title form-label">Nom</label><input class="form-control" type="text" name="firstname"></div>
                        </div>
                        <div class="col-sm-12 col-md-6">
                            <div class="form-group mb-3"><label class="title form-label">Prenom</label><input class="form-control" type="text" name="lastname"></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-6">
                            <div class="form-group mb-3">
                                <label class="title form-label">Genre</label>
                                <select class="form-control" name="genre">
                                    <option value="Homme">Homme</option>
                                    <option value="Femme">Femme</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6">
                            <div class="form-group mb-3">
                                <label class="title form-label">Date de naissance</label>
                                <input class="form-control" type="date" name="lastname">
                            </div>
                        </div>
                    </div>
                    <div class="form-group mb-3">
                        <label class="title form-label">Niveau</label>
                        <select class="form-control" name="niveau">
                            <% for(int i = 0 ; i < all_Niveau.size() ; i ++){ %>
                                <option value="<% out.println(all_Niveau.get(i).getIdNiv()); %>">
                                    <% out.println(all_Niveau.get(i).getNom()); %>
                                </option>
                            <% } %>
                        </select>
                    </div>
                    <div class="form-group mb-3">
                        <label class="title form-label">Specialite</label>
                        <div class="inscription-inline row">
                            <% for(int i = 0 ; i < all_Specialite.size() ; i ++){ %>
                            <span class="col-md-4">
                                <input class="form-check-input" type="radio" value="<% out.println(all_Specialite.get(i).getIdSpe()); %>">
                                <label><% out.println(all_Specialite.get(i).getNom()); %></label>
                            </span>
                            <% } %>
                        </div>
                    </div>
                     <hr id="stop-float">
                    <div class="row" id="save-button">
                        <div class="col-md-12 content-right">
                            <button class="btn btn-primary form-btn" id="add-save" type="submit">SAVE </button>
                            <button class="btn btn-danger form-btn" type="reset">CANCEL </button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

<%-- FOOTER --%>
    <jsp:include page="../partie/footer.jsp" />
<%-- FOOTER --%>

</body>

</html>