<div ng-init='readrules()' class='center'>
<br>

<span ng-if='loading == "true"'><img src='http://createurapp.com/appimg/loading.gif'></span>

<div class="page-header green row">
   <h1 class='green'>Trending Images <small>Data fetched from all popular pages on facebook</small></h1>
</div>

 <div class='row'>
   <p class='bg-primary' style='color:white;background-color: #730469;padding:10px;font-size:28px'><span style='color:white'>Current criteria</span> [<small style='font-size:17px'><span class=''><i><b>{{formData.type}}</b></i></span> posts under  <span class=''><b>{{formData.trendcat}}</b></span> category which were made on facebook today and got more than <span class=''><b>{{formData.likesplus}}</b></span> likes]</small></p>
 </div>
  <br>
  
  <div class="form-group row">

   <label for="likes" class="green col-sm-1 col-sm-offset-1 control-label" style='margin-right:-20px'>Category</label>
    <div class="col-sm-2 ">
	 <select class="form-control" ng-model='formData.trendcat'>
	   <option  ng-repeat='cat in categories' value="{{cat}}">{{cat}}</option>
	 </select>
	</div>
    <label for="likes" class="green col-sm-1 control-label" style='margin-right:-40px'>Likes</label>
    <div class="col-sm-2">
	 <select class="form-control" ng-model='formData.likesplus'>
	   <option  ng-repeat='l in likesrange' value="{{l}}">{{l}}+</option>
	 </select>
	</div>

	 <label for="likes" class="green col-sm-2 control-label" style='margin-right:-40px'>Watermerk text</label>
    <div class="col-sm-2">
	 <input id='watermarktext' >
	</div>
    
	<div class='row'>
	 <div class="col-sm-1 col-sm-offset-5" style='margin-top:10px'>
      <button class="btn btn-success" ng-click="getstats()" >Refresh</button>
	 </div>
	</div>
   
   <hr>

  </div>

<br>

<h1 class='green center'><b>{{totalcount}}</b> posts found</h1>


<button ng-if='totalcount > 0' class="btn btn-success margintop10"><a style='color:white'  ng-click="download()" >Download top 10</a></button>


<div deckgrid class="deckgrid" source="bugreportdata">
 <div class="a-card" style='padding:3px;text-align:center;border: 1px solid rgb(171, 16, 152);margin-left:20px;MARGIN-BOTTOM:20PX;box-shadow: 1px 1px 26px 0px #E423BC;
transition: box-shadow 0.25s ease 0s;
'>
 <img class="img-thumbnail photo" style="margin-top:10px" width="200" height="200" data-ng-src='{{ card.src_big }}'>
 <div class='margintop10'>
   <span class="glyphicon glyphicon glyphicon-thumbs-up"></span><span class='center'><b><span class='green'> {{ card.likes_count }}</span></b> Likes</span>
 </div>
 <button class="btn btn-success margintop10"><a style='color:white' href="{{ card.src_big }}" download="{{ card.src_big }}">Download</a></button>
 <button class="btn btn-success margintop10"><a target='_blank' href='http://facebook.com/{{card.objectid}}' style='color:white'>FB Link</a></button>
 <button class="btn btn-success margintop10"><a style='color:white'  ng-click="watermark('{{card.src_big}}')" >Watermark</a></button>


 
</div>
</div>

<br>

</div>