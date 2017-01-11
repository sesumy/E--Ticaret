<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="com.eticaret.DAO.UrunDAO"%>
<%@page import="com.eticaret.DAO.KategoriDAO"%>
<%@page import="com.eticaret.model.KategoriModel"%>
<%@page import="com.eticaret.model.UrunModel" %>
<%@page import="java.util.ArrayList"  %>

<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar" style="position: relative;
    left: -344px;
    top: -89px;">
						<h2></h2>
						<br><br><br><br><br>
						<h2 style="color: #282828;">Kategoriler</h2>
						<div class="panel-group category-products" id="accordian">
							<% ArrayList < KategoriModel> kategoriler=KategoriDAO.tumKatagoriler();%>							
							<%for(KategoriModel kategori:kategoriler) { %>
								<div class="panel panel-default">
								<div class="panel-heading">
								<%String name=kategori.getKategoriAdi();%>
									<h4 class="panel-title"><a href="<%=name%>" style="font-size: 16px;
    color: #dc143c;"><%=name%></a></h4>
								</div>
								</div>
							<%} %>												
						</div>
					</div>
				</div>		
				<div class="col-sm-9 padding-right" style="left: -344px;
    position: relative;
    top: -76px;
}">
					<div class="features_items" style="width: 1752px;">
					<br><br><br><br><br>
						<h2 class="title text-center" style="position: relative;
    left: 17px
    ;
    color: #dc143c;">ÜRÜNLER</h2>
						<% ArrayList<UrunModel> urunler = UrunDAO.tumUrunleriGetir();%>
                		<% for(UrunModel urun: urunler){ %>
                		<div class="col-sm-4" style="position: relative;
    left: 225px;">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="resimgetir?urunResim=<%=urun.getUrunId()%>" alt="" style="height: 340px;width: 365px;"/>
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
	