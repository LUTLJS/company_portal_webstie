<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>阿根廷帝国公司</title>
		<link href="css/main.css" rel="stylesheet" type="text/css">
		<link href="css/container.css" rel="stylesheet" type="text/css">
		<link href="css/reset.css" rel="stylesheet" type="text/css">
		<link href="css/screen.css" rel="stylesheet" type="text/css">
		<script src="js/jquery.min.js">
</script>
		<script src="js/tab.js">
</script>
	</head>

	<body>
		
		 <%@ include file="common_header.jsp" %>  
		 
		<!--banner-->
		<div class="second_banner">
			<img src="img/1.gif" alt="">
		</div>
		<!--//banner-->
		<!--企业简介-->
		<div class="container">

			<div class="left">
				<div class="menu">
					<div class="menu_title">
						企业简介
						<br>
						<span>Company profiles</span>
					</div>
					<ul id="tab">
						<li class="active" onclick="changeValue(this)">
							<a href="javascript:void(0)">企业概况</a>
						</li>
						<li onclick="changeValue(this)">
							<a href="javascript:void(0)">企业认证</a>
						</li>
						
					</ul>
				</div>
			</div>

			<div class="right">
				<div class="location">
					<span>当前位置：<a
						href="#">企业简介</a>
					</span>
					<div class="brief" id="b">
						企业概况
					</div>
				</div>
				<div style="font-size: 14px; margin-top: 53px; line-height: 36px;">
					<div id="tab_con">
						<div id="tab_con_1" class="active">
							<br>
							<p>
								公司全称
							</p>
							<br>
							<p>
								阿根廷帝国公司
							</p>
							<br>
							<p>
								创立时间
							</p>
							<br>
							<p>
								阿根廷帝国公司（工商注册）创建成立于 1009 年 12 月
							</p>
							
							<h1>Governorship | Duties</h1>
							<p>The governor is in charge of managing the Central Bank and he legally represents it before third parties; he acts on behalf of the Board of Directors, and calls for and chairs its meetings; he ensures compliance with the BCRA’s Charter, other national laws and Board Resolutions; and he performs all other duties entrusted to him as the Bank’s main executive authority (BCRA Charter, Section 10). He is a member of the Board of Directors.</p>
							<h1>Guido Sandleris | Governor (Presidential Appointment subject to Senate Confirmation)</h1>
							<p>Guido Sandleris holds a degree in Economics from Universidad de Buenos Aires (UBA), a master’s degree in Economics from the London School of Economics and a PhD in Economics from Columbia University.</p>
							<br>
							<br>
							<p>In June 2018 he was appointed Secretary of Economic Policy at the Ministry of Economy. During 2016 he served as Undersecretary of Finance in the Province of Buenos Aires and in 2017 he held office as Chief of Advisors of the Argentine Ministry of Finance. He has been a professor at Johns Hopkins University and a visiting professor at the London School of Economics and Universidad de Los Andes. He was a visiting researcher at the Federal Reserve Bank of Minneapolis, the Central Bank of Chile, the Pontifical Catholic University of Rio de Janeiro, the Inter-American Development Bank (IDB) and the International Monetary Fund (IMF). He was Director of the Center for Financial Research at the Universidad Torcuato Di Tella (UTDT) where he was also appointed Dean of the Businesses School.</p>

							<br>
							<br>
							<p>He specialized in international economics, finance and macroeconomics. His academic research work focuses on the effect of financial crises and the costs of sovereign defaults, among other subjects. His papers have been published in the Journal of International Economics, Journal of Monetary Economics, Journal of Money, Credit and Banking, and Oxford University Press, among others. He was a consultant and researcher for the World Bank, the Inter-American Development Bank, the Office of the Attorney General of the Treasury and several Latin American governments and investment banks. He co-authored the children’s book series “Hay Equipo” (The Team Gets Ready for the Match) and he has received several scholarships and research grants from the Fulbright Commission, the Central Bank of Argentina, the World Bank, Columbia University, and LACEA.</p>

							<br>
							<br>

							
						</div>
						<div id="tab_con_2" class="dis-n" style="text-align: center;">
							<img src="img/architecture.png" alt="" style="margin: 2% 0;">
						</div>

					</div>
				</div>
			</div>
		</div>
		<!--//企业简介-->
		<!--底部-->
		<div class="bottom">
			<div class="footer">
				<div class="gulid">
					<p>
						Copyright 2016 阿根廷帝国公司 All Rights.
					</p>
					<p>
						<a href="http://www.bcra.gov.ar/">阿根廷帝国公司</a> 技术支持
					</p>
					<p>
						布宜诺斯艾利斯ICP备  10002740号-2  阿根廷公网安备22010202000132号
					</p>
				</div>
			</div>
		</div>

	</body>

	
	
	<!--//底部-->
	<script>
tabs("#tab", "active", "#tab_con");
</script>


</html>
