
<!doctype html>
<html ng-app="downloadApp" xmlns:fb="http://ogp.me/ns/fb#">
	<head>


		
		
		<link rel="stylesheet" href="http://getbootstrap.com/dist/css/bootstrap.min.css">
			
		<link rel="stylesheet" type="text/css" href="css/ng-grid.css" />
        <script src="http://pagehelper.in/fancybox/lib/jquery-1.10.1.min.js"></script>
        <script src="http://angular.github.io/angular-phonecat/step-7/app/bower_components//angular/angular.js"></script> 
        <script src="http://angular.github.io/angular-phonecat/step-7/app/bower_components/angular-route/angular-route.js"></script>
		<script type="text/javascript" src="http://angular-ui.github.com/ng-grid/lib/ng-grid.debug.js"></script>
       
       <link rel="stylesheet" type="text/css" href="http://whatiztrending.com/css/deckgrid.css" 
		      media="screen"/>
		         <link rel="stylesheet" type="text/css" href="http://whatiztrending.com/css/app.css" 
		      media="screen"/>
		 <script src="http://andrekoenig.info/angular-deckgrid/scripts/angular-deckgrid.min.js"></script>
		
	    <script src="js/checklist-model.js"></script>
	     <script src="js/ng-grid.js"></script>
		<script src="js/controllers.js"></script>
		<script src="js/app.js"></script>
		<script src="js/bootstrap.min.js">

		</script>
		<!-- Add fancyBox main JS and CSS files -->
		<script type="text/javascript" src="fancybox/source/jquery.fancybox.js?v=2.1.5"></script>

		<style>
           .gridStyle {
    border: 1px solid rgb(212,212,212);
    height: 200px;
	text-align:center
}
.cellToolTip {
    overflow: visible;
}

.tooltip {
  top: 0 !important;
}

.btn-success {
color: #ffffff;
background-color: #B85CB0;
border-color: #4cae4c;
}
		</style>
        

</head>
<body>

<!-- Topbar Starts-->
	
<nav class="navbar navbar-default green" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <img src ='http://quizworld.in/img/logo.jpg' width=50 height=50 />
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
	  <li> <a class="green navbar-brand" style='color:#47a447;font-weight: 900;' href="http://truefbfriends.com">Viral<span style='color: rgb(186, 226, 24);'>Images</span>Today</a></li>
	  <li><p class="navbar-text"><span class="glyphicon glyphicon glyphicon-user"></span> Welcome <a href="#" class="navbar-link"> User</a></p></li>
	</ul>
    

  </div><!-- /.navbar-collapse -->
</nav>
	
<!-- Topbar Ends-->





<!-- Body container -->
<div class='container center-block' style=''>


<!-- Main View -->	
<div ng-view style='margin-top:0px;'>
</div>
<!-- Main View -->	

</div>
<!-- Body container ends -->	


<!-- Popup -->
<a id="popupmsgfb" href="#data"></a>
<div style="display: none">
<div id="data"> 
<div >
<b><span id='popupmsg'></span></b>
</div>
</div>
</div>
<!-- Popup -->

<script src="js/masonry.pkgd.min.js"></script>
		<script src="js/classie.js"></script>
		<script src="js/AnimOnScroll.js"></script>



 </body>
</html>