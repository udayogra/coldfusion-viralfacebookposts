
	var app = angular.module('downloadControllers',  ['ng','ngGrid','checklist-model','akoenig.deckgrid']);
    
   
app.controller('FbanalyzerCtrl', function($scope,$http,$rootScope) {

   

    $scope.bugreportdata = []; 
	$scope.totalcount = 0;
	$scope.formData = {};
	$scope.formData.trendcat =  "fun";
    $scope.formData.likesplus =  "1000";
	$scope.formData.trendimageage = 2;
	$scope.categories =  ['fun','sports','cars/bikes','animals'] ;
	$scope.likesrange =  ['1000','2000','4000','10000','100000'] ;  
	$scope.loading = 'false';
	$scope.watermarktext = 'watermark';
		
	$scope.getstats = function() {
		 $scope.loading = 'true';
	  	 $http({
            method: "GET",
            url: 'server.cfc?method=getdata',
			params : $scope.formData,
             }).success(function (data) {
				 $scope.loading = 'false';
				if(data.status == 'error')
					alert('There was an error - ' + data.errormessage);
					else{
				 $scope.bugreportdata = data;
                $scope.totalcount = data.length;
					}
          }).error(function (data) {
                      popupmsg('Some error occured. Please try later',true);
          });
		}


	$scope.watermarkk = function(path) {
		 $scope.loading = 'true';
	  	 $http({
            method: "GET",
            url: 'server.cfc?method=watermark&path=' + path + "&text=" + $scope.watermarktext,
			params : $scope.formData,
             }).success(function (data) {
				 $scope.loading = 'false';
				 window.top.location = 'http://localhost:8500/viraltoday/final.jpg';
          }).error(function (data) {
                      popupmsg('Some error occured. Please try later',true);
          });
		}

	
	$scope.download = function() {
		 $scope.loading = 'true';
		 //This part we have hardcoded. You need to traverse through bugreportdata variable to create a list of image paths to be downloaded
		 paths = 'https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/10847908_1573801449524184_1904982839119394995_n.jpg?oh=e6fee5fb0e1d48223d818b6b4e6e024c&oe=54FDB986&__gda__=1430466796_c8875f653a4fd20a396884752442ddc8,https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/10847908_1573801449524184_1904982839119394995_n.jpg?oh=e6fee5fb0e1d48223d818b6b4e6e024c&oe=54FDB986&__gda__=1430466796_c8875f653a4fd20a396884752442ddc8,https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/10847908_1573801449524184_1904982839119394995_n.jpg?oh=e6fee5fb0e1d48223d818b6b4e6e024c&oe=54FDB986&__gda__=1430466796_c8875f653a4fd20a396884752442ddc8';
	  	 $http({
            method: "GET",
            url: 'server.cfc?method=download&paths=' + encodeURIComponent(paths),
			params : $scope.formData,
             }).success(function (data) {
				 $scope.loading = 'false';
				 window.open('http://localhost:8500/viraltoday/final.zip')
          }).error(function (data) {
                      popupmsg('Some error occured. Please try later',true);
          });
		}

	
  

});

