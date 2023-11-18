   <!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Contact Us</title>
    <link href="main.css" rel="stylesheet">
     <link href="bootstrap.css" rel="stylesheet">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
    .fa-envelope:before {
    font-size: 35px;
    margin-right: 20px;
    content: "\f0e0";
    
    }
    .fa-map:before {
    content: "\f279";
    font-size: 35px;
    margin-right: 20px;
    }
    .fa-phone:before {
    content: "\f095";
    font-size: 35px;
    margin-right: 20px;
}
.fa-clock-four:before, .fa-clock:before {
    content: "\f017";
    font-size: 35px;
    margin-right: 20px;
}
}
   
    </style>
    <body>
     <jsp:include page="navbar.jsp" />
     <main>
    <section id="contact" class="contact">
       <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Contact</h2>
          <p>Need Help? <span>Contact Us</span></p>
        </div>

        <div class="mb-3">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3726.1608446420737!2d77.76149367499839!3d20.946054890614516!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd6a35c932b0c65%3A0x2d3eac241b72e890!2sGovernment%20Polytechnic%20Amravati!5e0!3m2!1sen!2sin!4v1697132213113!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                  </div><!-- End Google Maps -->

        <div class="row gy-4" >

          <div class="col-md-6">
            <div class="info-item  d-flex align-items-center">
              <i class="fa-solid fa-map"></i>
              <div>
                <h3>Our Address</h3>
                <p>VMV Road , Gadge Nagar , Amravati</p>
              </div>
            </div>
          </div><!-- End Info Item -->

          <div class="col-md-6">
            <div class="info-item d-flex align-items-center">
              <i class="fa-solid fa-envelope"></i>
              <div>
                <h3>Email Us</h3>
                <p>gpa@example.com</p>
              </div>
            </div>
          </div><!-- End Info Item -->

          <div class="col-md-6">
            <div class="info-item  d-flex align-items-center">
             <i class="fa-solid fa-phone"></i>
              <div>
                <h3>Call Us</h3>
                <p>+91 7841024696</p>
              </div>
            </div>
          </div><!-- End Info Item -->

          <div class="col-md-6">
            <div class="info-item  d-flex align-items-center">
            <i class="fa-solid fa-clock"></i>
              <div>
                <h3>Opening Hours</h3>
                <div><strong>Mon-Sat:</strong> 10AM - 6PM;
                  <strong>Sunday:</strong> Closed
                </div>
              </div>
            </div>
          </div>
      </div>
      </div>
      </section>
     
      </main>
      </body>
      </html>