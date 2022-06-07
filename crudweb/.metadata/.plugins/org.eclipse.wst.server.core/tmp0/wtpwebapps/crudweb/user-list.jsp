<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>User Management Application</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        	<link rel="stylesheet" href="http://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
			<link rel="stylesheet" href="css/style.css">
			<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
			<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet" href="css/style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
<style>
body {
	-webkit-text-size-adjust: 100%;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	background-color: var(- -bs-body-bg);
	color: var(- -bs-body-color);
	font-family: var(- -bs-body-font-family);
	font-size: var(- -bs-body-font-size);
	font-weight: var(- -bs-body-font-weight);
	line-height: var(- -bs-body-line-height);
	margin: 0;
	text-align: var(- -bs-body-text-align);
}

* {
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
	text-decoration: none;
	list-style-type: none;
	box-sizing: border-box;
}

.sidebar {
	height: 100%;
	width: 240px;
	position: fixed;
	left: 0;
	top: 0;
	z-index: 100;
	background-color: #222E3C;
	color: #fff;
}

.slidebar-header {
	display: flex;
	justify-content: space-around;
	align-items: center;
	height: 60px;
	padding: 0rem 1 rem;
	color: white;
	background-color: green;
}

/* .sidebar-menu {
	padding: 1rem;
} */
.slidebar li {
	margin-bottom: 1rem;
}

.slidebar a {
	color: #fff;
}

.slidebar a span:last-child {
	padding-right: 0rem 1rem;
}

.main-content {
	position: relative;
	margin-left: 240px;
}

header {
	position: fixed;
	left: 240px;
	top: 0;
	z-index: 100;
	width: calc(100% - 240px);
	background: #fff;
	height: 60px;
	padding: 0rem 1rem;
	display: flex;
	align-items: center;
	justify-content: flex-end;
	border-bottom: 1px solid #ccc;
	background-color: white;
}

.social-icons {
	display: flex;
	align-items: centers;
}

.social-icons div {
	height: 40px;
	width: 40px;
	background-size: cover;
	background-repeat: no-repeat;
	background-image: url("image/pikachu.jpg");
	background-color: #cccccc;
}

.ti-comment:before {
	content: "\e644";
}

.ti-bell:before {
	content: "\e6b8";
	color: #6c757d;
	display: block;
	font-size: 1.5rem;
	line-height: 1.4;
	padding: 0.1rem 0.8rem;
}

span.ti-comment {
	color: #6c757d;
	display: block;
	font-size: 1.5rem;
	line-height: 1.4;
	padding: 0.1rem 0.8rem;
}

.sidebar-header {
	background: transparent;
	color: #ced4da;
	font-size: .75rem;
	padding: 1.5rem 1.5rem 0.375rem;
}

.sidebar-item.active .sidebar-link:hover, .sidebar-item.active>.sidebar-link
	{
	background: linear-gradient(90deg, rgba(59, 125, 221, .1),
		rgba(59, 125, 221, .0875) 50%, transparent);
	border-left-color: #3b7ddd;
	color: #e9ecef;
}

.align-middle {
	vertical-align: middle !important;
}

.sidebar-link, a.sidebar-link {
	background: #222e3c;
	border-left: 3px solid transparent;
	color: rgba(233, 236, 239, .5);
	cursor: pointer;
	display: block;
	font-weight: 400;
	padding: 0.625rem 1.625rem;
	position: relative;
	text-decoration: none;
	transition: background .1s ease-in-out;
}

/* header + main  */
.navbar-bg {
	background: #fff;
}

.navbar {
	border-bottom: 0;
	box-shadow: 0 0 2rem 0 rgb(33 37 41/ 10%);
}

.navbar-expand {
	flex-wrap: nowrap;
	justify-content: flex-start;
}

.navbar {
	align-items: center;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	padding: 0.875rem 1.375rem;
	position: relative;
}

.hamburger {
	position: relative;
}

.hamburger, .hamburger:after, .hamburger:before {
	background: #495057;
	border-radius: 1px;
	content: "";
	cursor: pointer;
	display: block;
	height: 3px;
	transition: background .1s ease-in-out, color .1s ease-in-out;
	width: 24px;
}

.align-self-center {
	align-self: center !important;
}

.navbar-expand .navbar-collapse {
	display: flex !important;
	flex-basis: auto;
}

.nav-flag, .nav-icon {
	color: #6c757d;
	display: block;
	font-size: 1.5rem;
	line-height: 1.4;
	padding: 0.1rem 0.8rem;
	transition: background .1s ease-in-out, color .1s ease-in-out;
}

.dropdown-toggle {
	white-space: nowrap;
}

.navbar-light .navbar-nav .nav-link {
	color: rgba(0, 0, 0, .55);
}

.navbar-expand .navbar-nav .nav-link {
	padding-left: 0.5rem;
	padding-right: 0.5rem;
}

.dropdown-toggle {
	white-space: nowrap;
}

li {
	text-align: -webkit-match-parent;
}

.navbar-nav {
	direction: ltr;
}

.navbar-nav {
	display: flex;
	flex-direction: column;
	list-style: none;
	margin-bottom: 0;
	padding-left: 0;
}

.text-dark { -
	-bs-text-opacity: 1;
	color: rgba(var(- -bs-dark-rgb), var(- -bs-text-opacity)) !important;
}

*, :after, :before {
	box-sizing: border-box;
}

.dropdown-toggle {
	white-space: nowrap;
}

@media ( min-width : 992px) .content {
	padding
	:
	 
	3rem
	 
	3rem
	 
	1
	.5rem
	;
	

}

@media ( min-width : 768px) .content {
	max-width
	:
	 
	auto
	;
	
    
	width
	:
	 
	auto
	;
	

}

.content {
	direction: ltr;
	flex: 1;
	max-width: 100vw;
	padding: 1.5rem 1.5rem 0.75rem;
	width: 100vw;
}

footer.footer {
	background: #fff;
	direction: ltr;
	padding: 1rem 0.875rem;
}

.mb-0 {
	margin-bottom: 0 !important;
}

p {
	margin-bottom: 1rem;
	margin-top: 0;
}

footer.footer ul {
	margin-bottom: 0;
}

.list-inline, .list-unstyled {
	list-style: none;
	padding-left: 0;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	/* padding-inline-start: 40px; */
}

.text-end {
    text-align: right !important;
    width: 50%;
}
}

.text-muted { -
	-bs-text-opacity: 1;
	color: #6c757d !important;
}

.row { -
	-bs-gutter-x: 24px; -
	-bs-gutter-y: 0;
	display: flex;
	flex-wrap: wrap;
	margin-left: calc(var(- -bs-gutter-x)*-.5);
	margin-right: calc(var(- -bs-gutter-x)*-.5);
	margin-top: calc(var(- -bs-gutter-y)*-1);
}

.row { -
	-bs-gutter-x: 24px; -
	-bs-gutter-y: 0;
	display: flex;
	flex-wrap: wrap;
	margin-left: calc(var(- -bs-gutter-x)*-.5);
	margin-right: calc(var(- -bs-gutter-x)*-.5);
	margin-top: calc(var(- -bs-gutter-y)*-1);
}

footer.footer {
	background: #fff;
	direction: ltr;
	padding: 1rem 0.875rem;
}

.nav-item .indicator {
	background: #3b7ddd;
	border-radius: 50%;
	box-shadow: 0 0.1rem 0.2rem rgb(0 0 0/ 5%);
	color: #fff;
	display: block;
	font-size: .675rem;
	height: 18px;
	padding: 1px;
	position: absolute;
	right: -8px;
	text-align: center;
	top: 0;
	transition: top .1s ease-out;
	width: 18px;
}

.nav-flag, .nav-icon {
	color: #6c757d;
	display: block;
	font-size: 1.5rem;
	line-height: 1.4;
	padding: 0.1rem 0.8rem;
	transition: background .1s ease-in-out, color .1s ease-in-out;
}

.dropdown-toggle {
	white-space: nowrap;
}

a {
	cursor: pointer;
}

a {
	color: #3b7ddd;
	text-decoration: none;
}

.navbar-nav {
	direction: ltr;
}

.navbar-nav {
	display: flex;
	flex-direction: column;
	list-style: none;
	margin-bottom: 0;
	padding-left: 0;
}

.navbar {
	border-bottom: 0;
	box-shadow: 0 0 2rem 0 rgb(33 37 41/ 10%);
}

.navbar-expand {
	flex-wrap: nowrap;
	justify-content: flex-start;
}

.footer {
    margin-left: 131px;
    /* margin-top: 550px; */
}
ul.list-inline {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
    
}
footer.footer ul {
    margin-bottom: 0;
}
.col-6.text-start {
    width: 50%;
    height: 50px;
}
li.list-inline-item {
    float: right;
    padding: 10px;
    margin-top: -30px;
}
span.text-dark {
    margin-left: 7px;
    margin-right: 14px;
}
img {
    width: 40px;
}

.user-list {
    background-color: #4950571a;
    padding-bottom: 300px;
    padding-left: 190px;
}
th {
    background-color: #5cb1f3;
}
</style>
</head>
<body>
	<div class="sidebar" style="wight: 20%">
		<div class="slidebar-header">
			<h3 class="brand">

				<span>De Tai 14</span>
			</h3>

		</div>
		<div class="sidebar-menu">
			<ul>
				<li class="sidebar-header">Pages</li>
				<li class="sidebar-item active"><a class="sidebar-link"
					href="{{url_for('_user.index')}}"> <i class="align-middle"
						data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
				</a></li>

				<li class="sidebar-item"><a class="sidebar-link"
					href="{{url_for('_createDatabase.index')}}"> <i
						class="align-middle me-2" data-feather="database"></i> <span
						class="align-middle">New Database</span>
				</a></li>

				<li class="sidebar-item"><a class="sidebar-link"
					href="{{url_for('_createTable.index')}}"> <i
						class="align-middle me-2" data-feather="credit-card"></i> <span
						class="align-middle">New Table</span>
				</a></li>



			</ul>
		</div>
		<!-- <div class="main-content">
			<header>
				<span class="image" href="image/pikachu.jpg"></span>
				<div class="social-icons">
					<span class="ti-bell"></span> <span class="ti-comment"></span>
					<img src="goku.jpg" class="avatar img-fluid rounded" alt="Charles Hall">
					<img style="width: 32px;"
						src="https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2020/6/30/816260/Cho-1.jpg">

				</div>
			</header>
		</div> -->

	</div>
	<div class="main" style="wight: 80%">
		<div class="main-content">
			<header>
				<span class="image" href="image/pikachu.jpg"></span>
				<div class="social-icons">
					<span class="ti-bell"></span> <span class="ti-comment"></span> <img
						style="width: 32px;"
						src="https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg">

				</div>
				<span class="text-dark">kimngan</span>
			</header>
		</div>

		
	</div>
	
	<div class="user-list">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">Users</h3>
                    <hr>
                    <div class="container text-left">

                        <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add Row</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Country</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="user" items="${listUser}">

                                <tr>
                                    <td>
                                        <c:out value="${user.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.name}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.email}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.country}" />
                                    </td>
                                    <td><a href="edit?id=<c:out value='${user.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                </div>
            </div>
	<div class="footer">
			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-start">
							<p class="mb-0">
								<a class="text-muted" href="https://adminkit.io/"
									target="_blank"><strong>De tai 14</strong></a> &copy;
							</p>
						</div>
						<div class="col-6 text-end">
							<ul class="list-inline">
								<li class="list-inline-item"><a class="text-muted"
									href="https://adminkit.io/" target="_blank">Support</a></li>
								<li class="list-inline-item"><a class="text-muted"
									href="https://adminkit.io/" target="_blank">Help Center</a></li>
								<li class="list-inline-item"><a class="text-muted"
									href="https://adminkit.io/" target="_blank">Privacy</a></li>
								<li class="list-inline-item"><a class="text-muted"
									href="https://adminkit.io/" target="_blank">Terms</a></li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
</body>
</html>