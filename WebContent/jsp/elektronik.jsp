<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.ArrayList" %>
<%@page import="com.eticaret.DAO.KategoriDAO" %>
<%@page import="com.eticaret.DAO.UrunDAO" %>
<%@page import="com.eticaret.model.KategoriModel" %>
<%@page import="com.eticaret.model.UrunModel" %>
<!DOCTYPE html>
<html lang="en">
<head>
 

   <%@ include file="cssEkle.jsp"%>
    <%@ include file="header.jsp"%>
    <link rel="stylesheet" type="text/css" href="assets/css/cart.css">
         
   
</head><!--/head-->

<body style="background-image: url('${pageContext.request.contextPath}/images/wallpapar4.jpg');">
	<section>
		<div class="container">
			<div class="row">
							<br><br><br><br><br><br>																
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">ÜRÜNLER</h2>
						<% ArrayList<UrunModel> urunler = UrunDAO.elektronikKategoriGetir();%>
						<%if(urunler.size()==0){%>
						<h2>Ürün Bulunamadı</h2>
						<%} %>						
                		<% for(UrunModel urun: urunler){ %>
                		<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="resimgetir?urunResim=<%=urun.getUrunId()%>" alt="" style="height: 237px;"/>
											<h2><%=urun.getUrunFiyat()%> TL</h2>
											<p><%=urun.getUrunAd()%></p>
											<a href="sepetekle?urunID=<%=urun.getUrunId()%>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Sepete Ekle</a>
										</div>										
								</div>
								
							</div>
						</div>
						<%} %>			
					</div>																																					
				</div>
			</div>
		</div>
	</section>
	
	
	<%@ include file="footer.jsp"%>

  
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.scrollUp.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/price-range.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.prettyPhoto.js"></script>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>