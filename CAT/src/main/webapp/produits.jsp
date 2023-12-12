<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Produits</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
</head>
<body>
<%@include file="header.jsp"%>
<div class="container col-md-10 col-md-offset-1">
  <div class="card mb-3">
    <div class="card-header text-white bg-primary">Recherche des produits</div>
    <div class="card-body">
      <form action="chercher.do" method="get">
        <label>Mot Clé</label>
        <input type="text" name="motCle" value="${model.motCle}">
        <button type="submit" class="btn btn-primary">Chercher</button>
      </form>
      <p></p>
      <table class="table table-striped">
        <tr>
          <th>ID</th><th>Désignation</th><th>Prix</th><th>Quantité</th>
        </tr>
        <c:forEach items="${model.produits}" var="p">
          <tr>
            <td>${p.id}</td>
            <td>${p.designation}</td>
            <td>${p.prix}</td>
            <td>${p.quantite}</td>
            <td><a onclick="return confirm('Etes vous sûre?')" href="supprime.do?id=${p.id}">Supprimer</a></td>
            <td><a href="edit.do?id=${p.id}">Editer</a></td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </div>
</div>
</body>
</html>