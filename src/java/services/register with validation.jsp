<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 
	Template 2047 Brown Field
	by www.tooplate.com 
-->
<title>Register</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="js/swfobject.js"></script>
	<script type="text/javascript">
        var flashvars = {};
        flashvars.xml_file = "photo_list.xml";
        var params = {};
        params.wmode = "transparent";
        var attributes = {};
        attributes.id = "slider";
        swfobject.embedSWF("flash_slider.swf", "flash_grid_slider", "440", "220", "9.0.0", false, flashvars, params, attributes);
   
       
   
        
    
</script>
<script>
    function pass()
    {
        
    
    var a=document.f.pwd.value;
    var b=document.f.cpwd.value;
    var em=document.f.mail.value;
    var m=document.f.mn.value;
    var u=document.f.ui.value;
    //alert(un.length);
    atpos=em.indexOf("@");
    dotpos=em.lastIndexOf(".");
    if(a!==b)
        {
            alert("password not matched");
            return false;
        }
        else if(atpos==-1 && dotpos==-1)
        {
            alert("Invalid Email ID");
            return false;
        }
        else if(dotpos<atpos)
        {
            alert("Invalid Email ID");
            return false;
        }
        else if(m=="1111111111" || m=="0000000000" || m=="2222222222" || m=="3333333333" || m=="4444444444" || m=="5555555555" || m=="6666666666" || m=="7777777777" || m=="8888888888" || m=="9999999999")
        {
            alert("Invalid Mobile Number");
            return false;
        }
        else if(m.length>10)
        {
            alert("Invalid phon no");
            return false;
        }
        else if(m.length<10)
        {
            alert("Invalid Phone no");
            return false;
        }
        else
            {
                return true;
            }
    }
    
</script>

</head>

		
<body>

<div id="tooplate_wrapper">

	<div id="tooplate_header">
        <div id="site_title">
          <font face="Antique Olive" color="white" size="6em">REGISTRATION</font>
                
            
            
            
            
        </div>
        <div id="tooplate_menu">
            <ul>
                 <li><a href="index.jsp" class="current">Home</a></li>
               
                <li><a href="login.jsp">Login</a></li>
               
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of forever header -->
    
  
        <br></br>
    	<center>
        <form name="f" action="registerdb.jsp" method="post" onsubmit="return pass()">
                    
                   <table border="2">
                      
                       <tr><th><font color="white">User ID</font></th><td><input type="text" name="ui" placeholder="length should be 8" pattern="[0-9]{8}" maxlength="10" required="true"></input></td></tr>
                         <tr><th><font color="white">User Name</font></th><td><input type="text" name="un"  required="true"></input></td></tr>
                         <tr><th><font color="white">Password</font></th><td><input type="password" name="pwd" pattern="[A-Za-z0-9]{8}" maxlength="10" required="true"></input></td></tr>
                         <tr><th><font color="white">Confirm-Password</font></th><td><input type="password" pattern="[A-Za-z0-9]{8}" maxlength="10" name="cpwd" required="true"></input></td></tr>
                         <tr><th><font color="white">Email</font></th><td><input type="email" name="mail" required="true"></input></td></tr>
                         <tr><th><font color="white">Date of birth</font></th><td><input type="date" name="dob" required="true"></input></td></tr>
                         <tr><th><font color="white">Mobile no</font></th><td><input type="text" pattern="[0-9]{10}" maxlength="10" name="mn" required="true"></input></td></tr>
                         <tr><th><font color="white">Security Question </font></th><td><select name="que" required="true">
                             <option value="what is your fav color"><font color="white"> what is your fav color</font></option>
                             <option value="what is your lucky number"><font color="white"> what is your lucky number</font></option>
                             <option value="what is your fav bike"><font color="white"> what is your fav bike</font></option>
                             </td>
                                              
                         </tr>
                         <tr><th><font color="white">Answer</font></th><td><input type="text"  name="ans"required="required"></td></tr>
                         <tr><th><font color="white">Gender</font></th><td><input type="radio" name="g" value="male"  required="true"><font color="white">Male</font>
                                                                           <input type="radio" name="g" value="female"><font color="white"> Female</font>
                             </td></tr>
                         
                         
                         <tr><td>  <input type="submit" value="Register"></input> </td><td>&nbsp;&nbsp; <input type="reset" value="Cancel"></input></td></tr>
                    </table>
                                     
                    
                    
                </form>
                </center>
               
                
                
               
            

</div>

</body>
                    
       
        
        
        
        
    
    	
        
                
                
                
                <center>
        
                </center>
               
                
                
                
         
            
</div>
</html>