<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Admit Student</title>

    <style>
    /* Import Google font - Poppins */
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
body {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 20px;
  background: rgb(130, 106, 251);
  background-image : url("about2.jpeg");
    background-repeat: no-repeat;
    background-size:cover;
}
.container {
margin-top: 50px;
  position: relative;
  max-width: 700px;
  width: 100%;
  background: #fff;
  padding: 25px;
  border-radius: 8px;
  box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);

    background: rgba(0, 0, 0, .75);
}
.container header {
  font-size: 1.5rem;
  color: white;
  font-weight: 500;
  text-align: center;
}
.container .form {
  margin-top: 30px;
}
.form .input-box {
  width: 100%;
  margin-top: 20px;
}
.input-box label {
  color: white;
}
.form :where(.input-box input, .select-box) {
  position: relative;
  height: 50px;
  width: 100%;
  outline: none;
  font-size: 1rem;
  color: #707070;
  margin-top: 8px;
  border: 1px solid #ddd;
  border-radius: 6px;
  padding: 0 5px;
}
.input-box input:focus {
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
}
.form .column {
  display: flex;
  column-gap: 15px;
}
.form .gender-box {
  margin-top: 20px;
}
.gender-box h3 {
  color: white;
  font-size: 1rem;
  font-weight: 400;
  margin-bottom: 8px;
}
.form :where(.gender-option, .gender) {
  display: flex;
  align-items: center;
  column-gap: 50px;
  flex-wrap: wrap;
}
.form .gender {
  column-gap: 5px;
}
.gender input {
  accent-color: rgb(130, 106, 251);
}
.form :where(.gender input, .gender label) {
  cursor: pointer;
}
.gender label {
  color: #707070;
}
.address :where(input, .select-box) {
  margin-top: 15px;
}
.select-box select {
  height: 100%;
  width: 100%;
  outline: none;
  border: none;
  color: #707070;
  font-size: 1rem;
}
.form button {
  height: 55px;
  width: 100%;
  color: #fff;
  font-size: 1rem;
  font-weight: 400;
  margin-top: 30px;
  border: none;
  cursor: pointer;
  transition: all 0.2s ease;
  background: rgb(130, 106, 251);
}
.form button:hover {
  background: rgb(88, 56, 250);
}
/*Responsive*/
@media screen and (max-width: 500px) {
  .form .column {
    flex-wrap: wrap;
  }
  .form :where(.gender-option, .gender) {
    row-gap: 15px;
  }
}
    </style>
  </head>
  <body>
   <jsp:include page="navbar.jsp" />

    <section class="container">
      <header>Register New Student</header>
      <form action="./AddStudent" method="post" class="form">
        <div class="input-box">
          <label>Full Name</label>
          <input type="text" placeholder="Enter full name"  name="name" required />
        </div>

        <div class="input-box">
          <label>Email Address</label>
          <input type="email" placeholder="Enter email address" name="email" required />
        </div>
		 <div class="column">
          <div class="input-box">
            <label>ID Code</label>
            <input type="text" placeholder="Enter ID Code" name="IDCode" required />
          </div>
          <div class="input-box">
            <label>Department</label>
            <input type="text" placeholder="Enter Department" name="dept"required />
          </div>
        </div>
        <div class="column">
          <div class="input-box">
            <label>Phone Number</label>
            <input type="text" placeholder="Enter phone number" name="contact" maxlength="10" title="Please enter proper 10 digit contact no." pattern="[1-9]{1}[0-9]{9}"required />
          </div>
          <div class="input-box">
            <label>Birth Date</label>
            <input type="date" placeholder="Enter birth date" name="dob" required />
          </div>
        </div>
         <div class="column">
          <div class="input-box">
            <label>Age</label>
            <input type="number" placeholder="Enter Age" name="age" required />
          </div>
          <div class="input-box">
            <label>Select Year</label>
             <div class="select-box">
              <select name="year">
                <option hidden>Year</option>
                <option>I st Year</option>
                <option>II nd Year</option>
                <option>III rd Year</option>
              </select>
            </div>
          </div>
        </div>
        <div class="input-box address">
          <label>Address</label>
          <input type="text" placeholder="Enter street address" name="address"required />
          
          <div class="column">
            <input type="text" placeholder="Enter city" name="city" required />
            <input type="text" placeholder="Enter state" name="state" required />
          </div>
         <div class="input-box address">
          <label>Parents Information</label>
          <input type="text" placeholder="Enter Parents Name" name="pname" required />
          
          <div class="column">
            <input type="text" placeholder="Parents Contact" name="pcontact" maxlength="10" title="Please enter proper 10 digit contact no." pattern="[1-9]{1}[0-9]{9}" required />
            <input type="text" placeholder="Parents Occupation" name="poccupation" required />
          </div>
          
  
        <button>Submit</button>
      </form>
    </section>
  </body>
</html>