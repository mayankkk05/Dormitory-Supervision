<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  	<link href="gpa.png" rel="icon">
    <style>
    
@import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Open Sans", sans-serif;
}

body{background-image : url("about.jpg");
    background-repeat: no-repeat;
    background-size:cover;}


.header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
}

.navbar {
  display: flex;
  align-items: center;
  justify-content: space-between;
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px 15px;
  text-shadow: 4px 4px 8px black
}

.navbar .logo a {
  font-size: 1.8rem;
  text-decoration: none;
  color: #fff;
      text-shadow: 4px 4px 8px black;
}

.navbar .links {
  display: flex;
  align-items: center;
  list-style: none;
  gap: 35px;
  text-shadow: 4px 4px 8px black;
}

.navbar .links a {
  font-weight: bold;
  text-decoration: none;
  color: white;
  padding: 10px 0;
  transition: 0.2s ease;
  
}

.navbar .links a:hover {
  color: #47b2e4;
}

.navbar .buttons a {
  text-decoration: none;
  color: #fff;
  font-size: 1rem;
  padding: 15px 0;
  transition: 0.2s ease;
}

.navbar .buttons a:not(:last-child) {
  margin-right: 30px;
}

.navbar .buttons .signin:hover {
  color: #47b2e4;
}

.navbar .buttons .signup {
  border: 1px solid #fff;
  padding: 10px 20px;
  border-radius: 0.375rem;
  text-align: center;
  transition: 0.2s ease;
}

.navbar .buttons .signup:hover {
  background-color: #47b2e4;
  color: #fff;
}

.hero-section {
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  height: 95vh;
  padding: 0 15px;
  max-width: 1200px;
  margin: 0 auto;
}

.hero-section .hero {
  max-width: 50%;
  color: #fff;
}

.hero h2 {
  font-size: 2.5rem;
  margin-bottom: 20px;
}

.hero p {
  font-size: 1.2rem;
  margin-bottom: 20px;
  color: #c9c7c7;
}

.hero-section .img img {
  width: 517px;
}

.hero-section .buttons {
  margin-top: 40px;
}

.hero-section .buttons a {
  text-decoration: none;
  color: #fff;
  padding: 12px 24px;
  border-radius: 0.375rem;
  font-weight: 600;
  transition: 0.2s ease;
  display: inline-block;
}



.buttons .join {
  background-color: #47b2e4;
}


.dropbtn {
  background-color: transparent;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  font-weight:bold;
  text-shadow: 4px 4px 8px black;
}
.dropbtn:hover{ color:#47b2e4;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: transparent;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a ,input {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  font-weight:bold;
  
}

.dropdown-content a,input:hover {background-color: #ddd;color:#47b2e4;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: transparent;
}
/* Hamburger menu styles */
#menu-toggle {
  display: none;
}


}

@media screen and (max-width: 1023px) {
  .navbar .logo a {
    font-size: 1.5rem;
  }

  .links {
    position: fixed;
    left: -100%;
    top: 75px;
    width: 100%;
    height: 100vh;
    padding-top: 50px;
    background: #175d69;
    flex-direction: column;
    transition: 0.3s ease;
  }

  .navbar #menu-toggle:checked ~ .links {
    left: 0;
  }

  .navbar #hamburger-btn {
    display: block;
  }

  .header .buttons {
    display: none;
  }

  }
}
    </style>
  </head>
  <body>
    <header class="header">
      <nav class="navbar">
        <h2 class="logo" style="color:white" >GPA DORMS</h2>
        <input type="checkbox" id="menu-toggle" />
        
        
        <ul class="links">
          <li><a href="index.html">Home</a></li>
          <li><a href="about.jsp">About Us</a></li>
                         <li><div class="dropdown">
  <button class="dropbtn">Services</button>
  <div class="dropdown-content">
    <!--  <a href="addstudent.jsp">Admit New Student</a> 
    <a href="viewStudent.jsp">Admitted Students</a>-->
    <form action="./Services" method="get">
    <input type="submit" name ="service" value="Admit new student">
    <input type="submit" name= "service" value="Admitted students">
    </form>
  </div>
</div></li>

         
          <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
        
        </nav>
        </header>
        </body>
        </html>
        