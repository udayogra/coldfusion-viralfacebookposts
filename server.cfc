<cfcomponent>
    <cffunction name="getdata" access="remote" output="false" returnformat="json">
	<cfargument type='string' name='trendcat' default='fun'>
	<cfargument type='string' name='likesplus' default='1000'>
	<cfhttp url='https://viralfacebookimages.p.mashape.com/dl' method='get'>
          <cfhttpparam type='header' name='x-mashape-key' value='2s9dke8XsbmshFc64KjDF8vOgJFFp1FmuPwjsnAeSy7XbwU4Qk'>
	  <cfhttpparam type='URL' name='likesplus' value='#likesplus#'>
	  <cfhttpparam type='URL' name='trendcat' value='#trendcat#'>
	  <cfhttpparam type='URL' name='trendimageage' value='2'>
	</cfhttp>
        <cfreturn cfhttp.filecontent>
    </cffunction>

     <cffunction name="watermark" access="remote" output="false" returnformat="json">
	<cfargument type='string' name='path' >
	<cfargument type='string' name='text' >
	
	<cfset thisPath=ExpandPath("*.*")>
        <cfset thisDirectory=GetDirectoryFromPath(thisPath)>
	<cfhttp method="Get" url="#path#" path="#destination#" file="final.jpg">
	<cfimage source="#thisDirectory#/final.jpg" name="image">
        <cfset imagedrawtext(image,text,40,40,attr)>
        <cfimage source="#image#" action="write" destination="#thisDirectory#/final.jpg" overwrite="yes">

    </cffunction>

     <cffunction name="download" access="remote" output="false" returnformat="json">
	<cfargument type='string' name='paths' >
	<cfset thisPath=ExpandPath("*.*")>
        <cfset thisDirectory=GetDirectoryFromPath(thisPath)>
	<cfset array = listtoarray(paths)>
	<cfdump var='#array#' output='console'>
        <cfloop index='i' from="1" to="3">
          <cfhttp method="Get" url="#array[i]#" path="#thisDirectory#/temp" file="final#i#.jpg">
	</cfloop>
        
	<cfzip file="#thisDirectory#/final.zip" source="#thisDirectory#/temp"> 
	
    </cffunction>
</cfcomponent>

