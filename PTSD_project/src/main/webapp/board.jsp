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
				<a class="navbar-brand" href="index.html"><img
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
							class="nav-link fw-medium" aria-current="page" href="#service">서비스</a></li>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page" href="#booking">신청방법</a></li>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="board.jsp">사용후기</a></li>



						<!-- 로그인 여부에 따라 사용자에게 보이는 상단아이콘을 다르게 함 -->
						<% if(result == null) {%>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="login_resist_form.html">로그인</a></li>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="login_resist_form.html">회원가입</a></li>

						<%}else{ %>
						<%if(result.getTaxi_num().equals("admin")){%>
						<a href="select.jsp">회원정보관리</a>
						<% }%>
						<!-- <a href = "update.jsp">개인정보수정</a>  -->

						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="LogoutService">로그아웃</a></li>

						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page" href="update.jsp">회원정보수정</a></li>
						<%} %>



						<li class="nav-item dropdown px-3 px-lg-0"><a
							class="d-inline-block ps-0 py-2 pe-3 text-decoration-none dropdown-toggle fw-medium"
							href="#" id="navbarDropdown" role="button"
							data-bs-toggle="dropdown" aria-expanded="false">EN</a>
							<ul class="dropdown-menu dropdown-menu-end border-0 shadow-lg"
								style="border-radius: 0.3rem;" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#!">EN</a></li>
								<li><a class="dropdown-item" href="#!">BN</a></li>
							</ul></li>
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

		<!-- 	<div>

			<table class="table">
				<thead>  
					<tr>
						<th scope="col">#</th>
						<th scope="col">First</th>
						<th scope="col">Last</th>
						<th scope="col">Handle</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
				</tbody>
			</table>
		</div> -->
		
		
				
		<% if(result!=null) {%>
		
		
		<!-- 관리자계정을 taxi_num이 22인 경우로 가정함 -->
		<% if(result.getTaxi_num().equals("22")){ %>		
				
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
						<th scope="col">번호</th> 
						<th>제목</th>
						<th>작성자</th>
						<th>시간</th>
						<th>삭제</th>
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
            
           <td><a href = "DeleteBoardService1?TAXI_COMMENT_SEQ=<%=list.get(i).getTAXI_COMMENT_SEQ()%>">삭제</a></td>
         			</tr>
         <% } %>
         
          <tr>
                <td colspan="5" class="text-center">
                  <input type="button" value="홈으로 가기"  onclick="location.href='index.jsp'"  class="btn btn-warning">
                  &nbsp;&nbsp;&nbsp;
                  <input type="button" value="글쓰기"  onclick="location.href='writerBoard.jsp'"  class="btn btn-warning">
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
						<th scope="col">번호</th> 
						<th>제목</th>
						<th><center>작성자</center></th>
						<th><center>시간</center></th>
						<th ><center>평점</center></th>
					</tr>
				</thead>
				<tbody>
         
         
         
         <%for(int i =0 ; i <list.size(); i++){ %>
					<tr>
            <td><%= i+1 %></td>
            <td><a href="viewboardtest.jsp?TAXI_COMMENT_SEQ=<%=list.get(i).getTAXI_COMMENT_SEQ() %>"> <%= list.get(i).getTAXI_COMMENT_TITLE() %> </a></td>
            
            <td><center><%= list.get(i).getTAXI_COMMENT_WRITER() %></center></td>
            <td><center><%= list.get(i).getTAXI_COMMENT_DATE().substring(0,10) %></center></td>
            
            <td ><center>
            <% float  RATING = (float)list.get(i).getRATING();  %>
            
            <% if(RATING==5) {  %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="5-stars" name="RATING" value="5" v-model="ratings"/>
				<label for="5-stars" class="star pr-4">★★★★★</label>
			</div>
			<% }else if(RATING==4) { %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="4-stars" name="RATING" value="4" v-model="ratings"/>
				<label for="4-stars" class="star">★★★★</label>
			</div>
			<% }else if(RATING==3) { %>
			<div class="star-ratings space-x-4 mx-auto">
				<input  id="3-stars" name="RATING" value="3" v-model="ratings"/>
				<label for="3-stars" class="star">★★★</label>
			</div>
			<% }else if(RATING==2) { %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="2-stars" name="RATING" value="2" v-model="ratings"/>
				<label for="2-stars" class="star">★★</label>
			</div>
			<% }else{ %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="1-star" name="RATING" value="1" v-model="ratings" />
				<label for="1-star" class="star">★</label>
			</div>
			<% } %>
			</center>
            </td>
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
      
         	</tr>
         <% } %>
         
                   <tr>
                <td colspan="5" class="text-center">
                  <input type="button" value="홈으로 가기"  onclick="location.href='index.jsp'"  class="btn btn-warning">
                  &nbsp;&nbsp;&nbsp;
                  <input type="button" value="글쓰기"  onclick="location.href='writerBoardtest.jsp'"  class="btn btn-warning">
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
						<th scope="col">번호</th> 
						<th>제목</th>
						<th><center>작성자</center></th>
						<th><center>시간</center></th>
						<th ><center>평점</center></th>
					</tr>
				</thead>
				<tbody>
         
         <%for(int i =0 ; i <list.size(); i++){ %>
					<tr>
            <td><%= i+1 %></td>
            <td><a href="viewboardtest.jsp?TAXI_COMMENT_SEQ=<%=list.get(i).getTAXI_COMMENT_SEQ() %>"> <%= list.get(i).getTAXI_COMMENT_TITLE() %> </a></td>
            
            <td><center><%= list.get(i).getTAXI_COMMENT_WRITER() %></center></td>
            <td><center><%= list.get(i).getTAXI_COMMENT_DATE().substring(0,10) %></center></td>
            
            
            <td ><center>
            <% float  RATING = (float)list.get(i).getRATING();  %>
            
            <% if(RATING==5) {  %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="5-stars" name="RATING" value="5" v-model="ratings"/>
				<label for="5-stars" class="star pr-4">★★★★★</label>
			</div>
			<% }else if(RATING==4) { %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="4-stars" name="RATING" value="4" v-model="ratings"/>
				<label for="4-stars" class="star">★★★★</label>
			</div>
			<% }else if(RATING==3) { %>
			<div class="star-ratings space-x-4 mx-auto">
				<input  id="3-stars" name="RATING" value="3" v-model="ratings"/>
				<label for="3-stars" class="star">★★★</label>
			</div>
			<% }else if(RATING==2) { %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="2-stars" name="RATING" value="2" v-model="ratings"/>
				<label for="2-stars" class="star">★★</label>
			</div>
			<% }else{ %>
			<div class="star-ratings space-x-4 mx-auto">
				<input id="1-star" name="RATING" value="1" v-model="ratings" />
				<label for="1-star" class="star">★</label>
			</div>
			<% } %>
			</center>
            </td>
            
            
            
            
         	</tr>
         <% } %>
         <tr>
                <td colspan="5" class="text-center">
                  <input type="button" value="홈으로 가기"  onclick="location.href='index.jsp'"  class="btn btn-warning"> </td></tr>
         
         <% } %>
         
         
				</tbody>
				
			          <!--   <tr>
                <td colspan="5" class="text-center">
                  <input type="button" value="홈으로 가기"  onclick="location.href='index.jsp'"  class="btn btn-warning">
                  &nbsp;&nbsp;&nbsp;
                  <input type="button" value="글쓰기"  onclick="location.href='writerBoardtest.jsp'"  class="btn btn-warning">
                </td>
                            
            </tr>   -->
             

            
         </table>
         

		 
		 
		 

</div>
		
		
</body>
</html>