<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.ArrayList" %>
<%@page import="com.eticaret.DAO.KategoriDAO" %>
<%@page import="com.eticaret.DAO.UrunDAO" %>
<%@page import="com.eticaret.model.KategoriModel" %>
<%@page import="com.eticaret.model.UrunModel" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="header.jsp"%>
     <%@ include file="cssEkle.jsp"%>
       <%@ include file="jsEkle.jsp" %>
        
         
   
</head><!--/head-->

<body style="background-image: url('${pageContext.request.contextPath}/images/wallpapar4.jpg');">
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2></h2>
						 <h2>Kategoriler</h2>
						<div class="panel-group category-products" id="accordian">
							<% ArrayList<KategoriModel> kategoriler=KategoriDAO.tumKatagoriler();%>							
							<%for(KategoriModel kategori:kategoriler) { %>
								<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="<%=kategori.getKategoriAdi()%>"><%=kategori.getKategoriAdi()%></a></h4>
								</div>
								</div>
							<%} %>												
						</div>
														
						
						<div class="shipping text-center"><!--shipping-->
							<img src="${pageContext.request.contextPath}/images/home/shipping.jpg" alt="" />
						</div><!--/shipping-->
					
					</div>
				</div>														
																							
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">ÇOK SATILANLAR</h2>
						<% ArrayList<UrunModel> urunler = UrunDAO.cokSatilanGetir();%>
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