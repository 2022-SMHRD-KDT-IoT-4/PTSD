<%@page import="com.ptsd.model.TaxiDAO"%>
<%@page import="com.ptsd.model.TaxiVO"%>
<%@page import="com.ptsd.model.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ptsd.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PTSD | Project Taxi Service Drive</title>

<!-- ===============================================-->
<!--    Favicons-->
<!-- ===============================================-->
<link rel="apple-touch-icon" sizes="180x180"
	href="assets/img/favicons/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="assets/img/favicons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="assets/img/favicons/favicon-16x16.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicons/favicon.ico">
<link rel="manifest" href="assets/img/favicons/manifest.json">
<meta name="msapplication-TileImage"
	content="assets/img/favicons/mstile-150x150.png">
<meta name="theme-color" content="#ffffff">


<!-- ===============================================-->
<!--    Stylesheets-->
<!-- ===============================================-->
<link href="assets/css/theme.css" rel="stylesheet" />
<link href="assets/css/custom.css" rel="stylesheet" />
<link href="assets/css/rating.css" rel="stylesheet" />
</head>
<body>
		<%
	BoardDAO dao = new BoardDAO();
	
	ArrayList<BoardVO> list = dao.showBoard();
	TaxiVO result = new TaxiVO();
	if(result!=null){
	result = (TaxiVO)session.getAttribute("member");
	};
	
	%>
	<main class="main" id="top">
		<nav
			class="navbar navbar-expand-lg navbar-light fixed-top py-5 d-block"
			data-navbar-on-scroll="data-navbar-on-scroll">
			<div class="container">
				<a class="navbar-brand" href="index.jsp"><img
					src="assets/img/login/logo.png" height="70" alt="logo" /></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"> </span>
				</button>
				
				
				<div
					class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0"
					id="navbarSupportedContent">
					<ul
						class="navbar-nav ms-auto pt-2 pt-lg-0 font-base align-items-lg-center align-items-start">
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page" href="#service">?????????</a></li>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page" href="#booking">????????????</a></li>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="board.jsp">????????????</a></li>



						<!-- ????????? ????????? ?????? ??????????????? ????????? ?????????????????? ????????? ??? -->
						<% if(result == null) {%>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="login_resist_form.html">?????????</a></li>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="login_resist_form.html">????????????</a></li>

						<%}else{ %>
						<!-- <a href = "update.jsp">??????????????????</a>  -->

						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="LogoutService">????????????</a></li>

						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page" href="update.jsp">??????????????????</a></li>
						<%} %>



						
					</ul>
				</div>
			</div>
		</nav>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

		
		
				
		<% if(result!=null) {%>
		
		
		<!-- ?????????????????? taxi_num??? 22??? ????????? ????????? -->
		<% if(result.getTaxi_num().equals("admin")){ %>		
				
		      <div>
			<table class="table">
			<colgroup id="colgroupBoard">
			<col width ="5%">
			<col width ="20%">
			<col width ="10%">
			<col width ="10%">
			<col width ="5%">
			
			</colgroup>
				<thead>
					<tr>
						<th scope="col">??????</th> 
						<th>??????</th>
						<th>?????????</th>
						<th>??????</th>
						<th>??????</th>
					</tr>
				</thead>
				<tbody>
				
         <%for(int i =0 ; i <list.size(); i++){ %>
					<tr>
            <td><%= i+1 %></td>
            <td><a href="viewboard.jsp?TAXI_COMMENT_SEQ=<%=list.get(i).getTAXI_COMMENT_SEQ() %>"> <%= list.get(i).getTAXI_COMMENT_TITLE() %> </a></td>
            <%-- & boardlist_num=<%=list.get(i).getBOARDLIST_NUM() %> --%>
            <td><%= list.get(i).getTAXI_COMMENT_WRITER() %></td>
            <td><%= list.get(i).getTAXI_COMMENT_DATE().substring(0,10) %></td>
            
           <td><a href = "DeleteBoardService1?TAXI_COMMENT_SEQ=<%=list.get(i).getTAXI_COMMENT_SEQ()%>">??????</a></td>
         			</tr>
         <% } %>
         
          <tr>
                <td colspan="5" class="text-center">
                  <input type="button" value="????????? ??????"  onclick="location.href='index.jsp'"  class="btn btn-warning">
                  &nbsp;&nbsp;&nbsp;
                  <input type="button" value="?????????"  onclick="location.href='writerBoard.jsp'"  class="btn btn-warning">
                </td>
                            
            </tr> 
         
         <%}else{ %>
         
               <div>
			<table class="table">
			<colgroup id="colgroupBoard">
			<col width ="5%">
			<col width ="20%">
			<col width ="10%">
			<col width ="10%">
			<col width ="10%">
			
			</colgroup>
				<thead>
					<tr >
						<th scope="col">??????</th> 
						<th>??????</th>
						<th><center>?????????</center></th>
						<th><center>??????</center></th>
						<th ><center>??????</center></th>
					</tr>
				</thead>
				<tbody>
         
         
         
         <%for(int i =0 ; i <list.size(); i++){ %>
					<tr>
            <td><%= i+1 %></td>
            <td><a href="viewboard.jsp?TAXI_COMMENT_SEQ=<%=list.get(i).getTAXI_COMMENT_SEQ() %>"> <%= list.get(i).getTAXI_COMMENT_TITLE() %> </a></td>
            
            <td><center><%= list.get(i).getTAXI_COMMENT_WRITER() %></center></td>
            <td><center><%= list.get(i).getTAXI_COMMENT_DATE().substring(0,10) %></center></td>
            
            <td ><center>
            <% float  RATING = (float)list.get(i).getRATING();  %>
            
            <% if(RATING==5) {  %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="5-stars" name="RATING" value="5" v-model="ratings"/>
				<label for="5-stars" class="star pr-4">???????????????</label>
			</div>
			<% }else if(RATING==4) { %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="4-stars" name="RATING" value="4" v-model="ratings"/>
				<label for="4-stars" class="star">????????????</label>
			</div>
			<% }else if(RATING==3) { %>
			<div class="star-ratings space-x-4 mx-auto">
				<input  id="3-stars" name="RATING" value="3" v-model="ratings"/>
				<label for="3-stars" class="star">?????????</label>
			</div>
			<% }else if(RATING==2) { %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="2-stars" name="RATING" value="2" v-model="ratings"/>
				<label for="2-stars" class="star">??????</label>
			</div>
			<% }else{ %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="1-star" name="RATING" value="1" v-model="ratings" />
				<label for="1-star" class="star">???</label>
			</div>
			<% } %>
			</center>
            </td>
         	</tr>
         <% } %>
         
                   <tr>
                <td colspan="5" class="text-center">
                  <input type="button" value="????????? ??????"  onclick="location.href='index.jsp'"  class="btn btn-warning">
                  &nbsp;&nbsp;&nbsp;
                  <input type="button" value="?????????"  onclick="location.href='writerBoard.jsp'"  class="btn btn-warning">
                </td>
                            
            </tr> 
         	
         <% }%>
         
         <% }else{ %>
         
                        <div>
			<table class="table"    >
			<colgroup id="colgroupBoard">
			<col width ="5%">
			<col width ="20%">
			<col width ="10%">
			<col width ="10%">
			<col width ="10%">
			
			</colgroup>
				<thead>
					<tr>
						<th scope="col">??????</th> 
						<th>??????</th>
						<th><center>?????????</center></th>
						<th><center>??????</center></th>
						<th ><center>??????</center></th>
					</tr>
				</thead>
				<tbody>
         
         <%for(int i =0 ; i <list.size(); i++){ %>
					<tr>
            <td><%= i+1 %></td>
            <td><a href="viewboard.jsp?TAXI_COMMENT_SEQ=<%=list.get(i).getTAXI_COMMENT_SEQ() %>"> <%= list.get(i).getTAXI_COMMENT_TITLE() %> </a></td>
            
            <td><center><%= list.get(i).getTAXI_COMMENT_WRITER() %></center></td>
            <td><center><%= list.get(i).getTAXI_COMMENT_DATE().substring(0,10) %></center></td>
            
            
            <td ><center>
            <% float  RATING = (float)list.get(i).getRATING();  %>
            
            <% if(RATING==5) {  %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="5-stars" name="RATING" value="5" v-model="ratings"/>
				<label for="5-stars" class="star pr-4">???????????????</label>
			</div>
			<% }else if(RATING==4) { %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="4-stars" name="RATING" value="4" v-model="ratings"/>
				<label for="4-stars" class="star">????????????</label>
			</div>
			<% }else if(RATING==3) { %>
			<div class="star-ratings space-x-4 mx-auto">
				<input  id="3-stars" name="RATING" value="3" v-model="ratings"/>
				<label for="3-stars" class="star">?????????</label>
			</div>
			<% }else if(RATING==2) { %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="2-stars" name="RATING" value="2" v-model="ratings"/>
				<label for="2-stars" class="star">??????</label>
			</div>
			<% }else{ %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="1-star" name="RATING" value="1" v-model="ratings" />
				<label for="1-star" class="star">???</label>
			</div>
			<% } %>
			</center>
            </td>
            
            
            
            
         	</tr>
         <% } %>
         <tr>
                <td colspan="5" class="text-center">
                  <input type="button" value="????????? ??????"  onclick="location.href='index.jsp'"  class="btn btn-warning"> </td></tr>
         
         <% } %>
         
         
				</tbody>
				
			          <!--   <tr>
                <td colspan="5" class="text-center">
                  <input type="button" value="????????? ??????"  onclick="location.href='index.jsp'"  class="btn btn-warning">
                  &nbsp;&nbsp;&nbsp;
                  <input type="button" value="?????????"  onclick="location.href='writerBoardtest.jsp'"  class="btn btn-warning">
                </td>
                            
            </tr>   -->
             

            
         </table>
         

		 
		 
		 

</div>
		
		
</body>
</html>