<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> About Us </title>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;

}

body{

}
::selection{
  background: #a3f5ec;
}


.logo{
  height: 80px;
  width: 150px;
  }
.logo img{
  height: 100%;
  width: 100%;
  object-fit: contain;
  
}
.menu{
  display: flex;
}
 .menu li{
  list-style: none;
  margin: 0 10px;
}
.menu a{
  color: #2c3e50;
  font-size: 17px;
  font-weight: 500;
  text-decoration: none;
}
.menu a:hover{
  color: #000;
}
.search-box{
  position: relative;
  height: 40px;
  width: 250px;
}
.search-box input[type="text"]{
  position: absolute;
  font-size: 18px;
  height: 100%;
  width: 100%;
  border-radius: 8px;
  outline: none;
  color: #2c3350;
  border: 2px solid #2c3350;
  background: #f2f2f2;
  padding: 0 10px 0 40px;
}
.search-box a{
  position: absolute;
  top: 50%;
  left: 10px;
  font-size: 20px;
  color: #2c3350;
  transform: translateY(-50%);
  border-right: 2px solid #2c3350;
  padding: 0 5px 0 0;
}
.text-content{
  position: absolute;
  top: 33%;
  left: 7%;
  z-index: 12;
}
.text-content .text{
  font-size: 27px;
  font-weight:bold;
  color: #2c3350;
    position: fixed;
    left: 30px;
    top: 100px;
}
.text-content .name{
color: #2c3350;
 font-size: 75px;
 font-weight: 600;
 position: fixed;
    left: 25px;
    top: 130px;
}

.text-content .job{
 color: #2c3350;
 font-size: 40px;
 margin: 5px 0;
 margin-top: -4px;
 display: flex;
}
.text-content .typing-text{
  margin-left: 10px;
  overflow: hidden;
  white-space: nowrap;
  border-right: 4px solid #1de2d1;
  animation: typing 5s steps(500) infinite;
}
@keyframes typing{
  0%{
    width: 0ch;
  }
  50%{
    width: 9ch;
  }
  100%{
    width: 0ch;
  }
}
.text-content .job .one{
  color: maroon;
  font-weight:bold;
}
.text-content .job .two{
  color: maroon;
  font-weight:bold;
}
.buttons{
  margin: 20px 0 0 50px;
}
.text-content .buttons button{
  outline: none;
  margin: 0 10px;
  border: none;
  border-radius: 6px;
  font-size: 18px;
  color: #fff;
  padding: 8px 16px;
  cursor: pointer;
  transition: all 0.3s ease;
  background-image: linear-gradient( 135deg, #2AFADF     10%, #C346C2 100%);
}
.buttons button:hover{
  transform: scale(0.97);
}
.content .about img{
  position: absolute;
  height: 95%;
  bottom: 0;
  right: 80px;
  position: absolute;
}
header .media-icons{
  display: flex;
  flex-direction: column;
  position: absolute;
  right: 40px;
  bottom: 40px;
}
.media-icons a{
 margin-top: 8px;
 font-size: 20px;
 font-weight: 500;
 text-decoration: none;
 opacity: 0.7;
 color: #2c3350;
 transition: all 0.3s ease;
}
.media-icons a:hover{
 opacity: 1;
}
p{
color:darkolivegreen;
font-weight:bold;
}
strong,h3{color:darkcyan;font-size:18px;}
    </style>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
<div class="logo">
      <img src="gpa.png" alt="" >
      
     </div>

<jsp:include page="aboutnav.jsp"/>
     
   <div class="content">
     <div class="text-content">
       <div class="text">Dormitory Services</div>
       <div class="name">Government Polytechnic Amravati</div>
       
         <div class="job">
           
            <div class="typing-text">
              <span class="one">About</span>
              <span class="two">Us</span>
            </div>
          </div>
    
         <p>Government Polytechnic, Amravati is an autonomous Institute of Govt. Polytechnic, Maharashtra established in the year 1955. This institute has a long history of producing technical manpower and rendering technical services to the society. Many students of this institute are chairing the topmost positions in various govt. offices and in reputed industries. Few of the students became successful entrepreneur looking to the overall performance of the institute. MSBTE, Mumbai has awarded academic autonomy to the institute from 1995.
            
            The ISTE of Maharashtra & Goa section has awarded the institute by Narsee Monje Award in 2005 & Best Polytechnic award in 2015. The institute has separate trainee hostel with all facilities for accommodation purpose. The institute has separate Library building with all equipped resources..</p>
            <br><p>

            The Institute has a Dormitory for the sake of the merit student with capacity of 100 rooms located in campus of Govt.Polytchnic Amravati (GPA) since 1955.The Dormitory is equipped with all facility like colour TV in all rooms, news paper with stand, large playground for recreation of student in Dormitory primises. Besides residence of Dormitory have been provided with one time meal facility with various assigned commitie. Hot water facility also provided to students through solar water heating system having capacity 3000 ltrs. Rooms with 2 double-decker beds and blankets for each students . Also, the Dormitory have the most hygenic and cleaned 20 bathrooms for each compartment for the betterment of students.

            Students from outside of Amravati can stay at Dormitory with just tapping the institute ID card at the barcode reader outside the dormitory or can also apply online through the Dormitory e-portal .
            <br></br> 
        </p>
        <h3>Our Team</h3>
        <p>
            We have a dedicated team of professionals committed to providing the best dormitory services.<br>Our team members:
        </p>
        <ul>
            <li><strong>Mayank Udapurkar</strong> - Students Representative (GPA Dorms)</li>
            <li><strong>Shlok Karangale</strong> - Management Representative (GPA Dorms)</li>
             <li><strong>And other management authorities ...</strong> </li>
             
        </ul>

      
     </div>

   </div>
   <div class="media-icons">
    <a href="#"><i class="fab fa-facebook-f"></i></a>
    <a href="#"><i class="fab fa-twitter"></i></a>
    <a href="#"><i class="fab fa-linkedin-in"></i></a>
    <a href="#"><i class="fab fa-pinterest"></i></a>

        
  </div>

</body>
</html>