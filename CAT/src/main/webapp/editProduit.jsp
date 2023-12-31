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
    <div class="card-header text-white bg-primary">Saisie d'un produit</div>
    <div class="card-body">
      <form action="updateProduit.do" method="post">
        <div class="form-group">
          <label class="control-label font-weight-bold">ID</label>
          <input type="hidden" name="id" class="form-control" value="${produit.id}" required="required"/>
          <label>${produit.id}</label>
          <span></span>
        </div>
        <div class="form-group">
          <label class="control-label font-weight-bold">Désignation</label>
          <input type="text" name="designation" class="form-control" value="${produit.designation}" required="required"/>
          <span></span>
        </div>
        <div class="form-group">
          <label class="control-label font-weight-bold">Prix</label>
          <input type="text" name="prix" class="form-control" value="${produit.prix}"/>
          <span></span>
        </div>
        <div class="form-group">
          <label class="control-label font-weight-bold">Quantite</label>
          <input type="text" name="quantite" class="form-control" value="${produit.quantite}"/>
          <span></span>
        </div>
        <div>
          <button type="submit" class="btn btn-primary">Save</button>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>