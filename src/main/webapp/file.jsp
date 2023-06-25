<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>File Upload</title>
</head>
<body onload="getfiles()">
<div class="CS"></div>
	<h3>Upload Your Project</h3>
	 <link rel="stylesheet" href="style2.css"/>
	<p>Select a file: <input type="file" id="myfile" name="myfile" /> </p>
	<button onclick="upload()" >Click here to Upload</button>
	<p><label id="status" ></label> </p>
	<div id="display" style="width:100%"></div>
</body>
<script type="text/javascript">
	function upload()
	{
		var formdata = new FormData();
		formdata.append("myfile", document.getElementById("myfile").files[0]);
		
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:2000/api/upload";
		xhtml.open("POST", url, true);
		
		xhtml.send(formdata);
		
		var myTimer = setInterval(getStatus, 1000);
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				clearInterval(myTimer);
				var status = document.getElementById("status");
				status.innerText = this.responseText;
			}
		};
	}
	
	function getStatus()
	{
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:2000/api/status";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var status = document.getElementById("status");
				var data = JSON.parse(this.responseText);
				status.innerText = "Uploading " + data.uploadedbytes + " of " + data.filesize;
			}
		};
	}
	
	function getfiles()
	{
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:2000/api/getfiles";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var data = JSON.parse(this.responseText);
				var table = "<table border=1>";
				table += "<tr> <th>File Name</th> <th>Size (in bytes)</th> <th>Action</th></tr>";
				for(var x in data)
				{
					table += "<tr> <td>"+ data[x].filename +"</td> <td>"+ data[x].filesize +"</td> <td> <a href='"+ data[x].path + data[x].filename +"'>download</a> </td> </tr>";
				}
				var display = document.getElementById("display");
				display.innerHTML = table;
			}
		};
	}
</script>
</html>