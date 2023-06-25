<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <style>
.main{
    min-height: 30vh;
    width: 1600px;
    height:20px;
    background-image: linear-gradient(rgba(4,9,30,0.7),rgba(4,9,30,0.7)),url("images/lms.png");
    background-position: center;
    position: relative;
}
.root1
{ 
    background-image: linear-gradient(rgb(185, 51, 151),rgb(174, 228, 236));
    text-align: center;
   border-style:double;
   border-radius: 20px;
   border-color:grey black;
   width: 350px;
   height: 350px;
   margin:60px;
}
.title1
{
    color : rgba(12, 65, 95, 0.959);
    font-size:x-large;
}
.pic1
{
    text-align: center;
    margin-right: 8%;
    border-style:solid;
    border-radius: 10%;
}
.button1
{
    align-text:center
}
.root2
{ 
    background-image: linear-gradient(rgb(206, 46, 174),rgb(113, 219, 234));

    text-align: center;
   border-style:double;
   border-radius: 20px;
   border-color:rgb(112, 90, 90) black;
   width: 350px;
   height: 350px;
   margin:60px;
}
.title2
{
    color : rgba(5, 62, 44, 0.959);
    font-size:x-large;
}
.pic2
{
    text-align: center;
    margin-right: 8%;
    border-style:solid;
    border-radius: 10%;
}
.button2
{
    align-text:center
}
.root3
{ 
    background-image: linear-gradient(rgb(185, 51, 151),rgb(174, 228, 236));
    text-align: center;
   border-style:double;
   border-radius: 20px;
   border-color:grey black;
   width: 350px;
   height: 350px;
   margin:60px;
}
.title3
{
    color : rgba(12, 65, 95, 0.959);
    font-size:x-large;
}
.pic3
{
    text-align: center;
    margin-right: 8%;
    border-style:solid;
    border-radius: 10%;
}
.button3
{
    align-text:center
}

nav{
    display: flex;
    padding: 2% 6%;
    justify-content: space-between;
    align-items: center;
}
nav img{
    width: 100px;
}
/*for moving the alignments from left to right*/
.nav-links{
    flex: 1; 
    text-align: right;
}
.nav-links ul li{
    list-style:none;
    display: inline-block;
    padding: 8px 12px; 
    position: relative;
}
.nav-links ul li a{
    color:rgb(249, 239, 239);
    text-decoration:none;
    font-size: 20px;
}
/*for underlines of home...*/
.nav-links ul li::after{ 
    content:'';
    width: 0%;
    height:2px;
    background: #f50404;
    display:block;
    margin:auto;
    transition: 0.5s;
}
/*when we move the cursor on home the underline will be appeared*/
.nav-links ul li:hover::after{
    width:100%
}

</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
    <section class="main">
        <nav> 
            <!-- <a href="index.html"><img src="logo4.jpg"></a> -->
            <div class="nav-links" id="navLinks">
                <ul>
                    <li><a href="/">HOME</a></li>
                    <li><a href="about.jsp">ABOUT</a></li>
                    <li><a href="contactus">CONTACT</a></li>
                    	
                    
                </ul>
            </div>
        </nav>  
    </section>

       <table>
        <tr>
          <td> 
     <form method="GET" action="login">
        
            <div class="root1">
                <p class="title1">ADMIN LOGIN</p>
                <img class="pic1" src="images/nan.jpg" width="150" height="150" border-style="solid"></img>
                <br><br>
                <input type="submit" value="Login" class="button">
            </div>
            </form>
            </td>
        <td>
            <div class="root3">
                <p class="title3">FACULTY LOGIN</p>
                <form method="GET" action="facultylogin">
                <img class="pic3" src="images/di.jpg" width="150" height="150" border-style="solid"></img>
                <br><br>
                <input type="submit" value="Login" class="button">
            </div>
            </form>
            </td>
        <td>
        <form method="GET" action="studentlogin">
        
            <div class="root2">
                <p class="title2">STUDENT LOGIN</p>
                <img class="pic2" src="images/ni.jpg" width="150" height="150" border-style="solid"></img>
                <br><br>
                <input type="submit" value="Login" class="button">
            </div>
            </form>
            </td>
        </td>
        </tr>
       </table>

    </body>
</html>