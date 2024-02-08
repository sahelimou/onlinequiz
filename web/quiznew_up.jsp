<%-- 
    Document   : register
    Created on : 03-Feb-2023, 10:46:26 am
    Author     : User
--%>

<%@page import="com.onlinequiz.model.qnsB"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.onlinequiz.model.qqnsB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>quiz Page</title>
        :root {

  --color-1: #6366f1;

  --color-1-hover: #4338ca;

  --color-2: #06b6d4;

  --color-2-hover: #0891b2;

  --text-color: #312e81;

  --status-btn-bg: #f8fafc;

  --status-btn-bg-hover: #f1f5f9;

}

body {

  background: linear-gradient(to left, var(--color-1), var(--color-2));

}

.container {

  margin: 10rem auto;

  max-width: 500px;

  background: white;

  border-radius: 1rem;

  padding: 2rem;

}

.form-input {

  width: 100%;

  border: 1px solid #ddd;

  border-radius: .5rem;

  box-shadow: inset 0px 1px 2px rgba(0, 0, 0, .1);

  padding: 1rem;

  box-sizing: border-box;

  color: var(--text-color);

  transition: ease-in-out .3s all;

}

.form-input::placeholder {

  color: #cbd5e1;

}

.form-input:focus {

  outline: none;

  border-color: var(--color-1);

}

.btn:focus-within,

.form-input:focus-within {

  box-shadow: #f8fafc 0px 0px 0px 2px, #c7d2fe 0px 0px 0px 6px, #0000 0px 1px 2px 0px;

}

textarea.form-input {

  min-height: 150px;

}

.btn {

  border: 0;

  background: var(--color-1);

  padding: 1rem;

  border-radius: 25px;

  color: white;

  cursor: pointer;

}

.btn[disabled] {

  opacity: .5;

  pointer-events: none;

}

.btn:hover {

  background: var(--color-1-hover);

  transition: ease-in-out .3s all;

}

.btn-submit {

  background-color: var(--color-2);

}

.btn-submit:hover {

  background-color: var(--color-2-hover);

}

.pagination {

  margin-top: 1rem;

  display: flex;

  align-items: center;

  justify-content: center;

}

.pagination .btn {

  width: 100%;

  text-align: center;

  margin: 0 6px;

}

.tab-status {

  display: flex;

  align-items: center;

}

.tab-status span {

  appearance: none;

  background: var(--status-btn-bg);

  border: none;

  border-radius: 50%;

  width: 2rem;

  height: 2rem;

  margin-right: .5rem;

  display: flex;

  align-items: center;

  justify-content: center;

}

.tab-status span.active {

  background-color: var(--color-2);

  color: white;

}

.hidden {

  display: none;

}

        <link rel="stylesheet" href="/path/to/cdn/bootstrap.min.css" />
<script src="/path/to/cdn/bootstrap.min.js"></script>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                 clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 70%, 73% 73%, 30% 61%, 0% 70%, 0 0);      }
        </style>
      
    </head>
    <body>
        <%@include file="navb.jsp" %>
        <% String uid = (String)session.getAttribute("user"); 
        int uid1=(int)session.getAttribute("uid");
        ArrayList qnsall=(ArrayList)request.getAttribute("qnsall");
        ArrayList<qnsB> qnsnew=new ArrayList<>();
        /*qnsB qb=(qnsB)request.getAttribute("qb");
        //session.setAttribute("qqb", qb);
        session.setAttribute("qid",qb.getQid());
        session.setAttribute("qtopic",qb.getQtopic());
        session.setAttribute("qtm", qb.getQtm());
        session.setAttribute("qm", qb.getQm());
        session.setAttribute("tq", qb.getTq());
        session.setAttribute("qnsid", qb.getQnsid());
        session.setAttribute("ansid", qb.getAnsid());
        session.setAttribute("qns",qb.getQns());
        session.setAttribute("corrans", qb.getCorrans());
        session.setAttribute("answ", qb.getAnsw());*/
        %> 
         <div class="container-fluid p-0 m-0">
            <div class="jumbotron pbackground text-white">
                <h1 class="display-3">Hi <% out.print(uid); %> <a href="logout.jsp" class="btn btn-primary">logout</a></h1>
            <p>View Quiz ....</p>
             </div></div>
        <nav>
  <div class="container">

  <div class="tab-status">

    <span class="tab active">1</span>

    <span class="tab">2</span>

    <span class="tab">3</span>

  </div>

  <form action="#">

    <div role="tab-list">

      <div role="tabpanel" id="color" class="tabpanel">

        <h3>What is your favorite color?</h3>

        <textarea name="color" class="form-input" placeholder="Ruby red"></textarea>

      </div>

      <div role="tabpanel" id="hobbies" class="tabpanel hidden">

        <h3>What are your hobbies?</h3>

        <textarea name="hobbies" class="form-input" placeholder="Mountain climbing, Guitar, Skateboarding"></textarea>

      </div>

        <div role="tabpanel" id="occupation" class="tabpanel hidden">

        <h3>What is your occupation?</h3>

        <textarea name="occupation" class="form-input" placeholder="Web Designer"></textarea>

      </div>

    </div>

      <div class="pagination">

        <a class="btn hidden" id="prev">Previous</a>

        <a class="btn" id="next">Continue</a>

        <button class="btn btn-submit hidden" id="submit">Submit</button>

      </div>

    </form>

</div>

            <script>
                const previousButton = document.querySelector('#prev')

const nextButton = document.querySelector('#next')

const submitButton = document.querySelector('#submit')

const tabTargets = document.querySelectorAll('.tab')

const tabPanels = document.querySelectorAll('.tabpanel')

const isEmpty = (str) => !str.trim().length

let currentStep = 0
nextButton.addEventListener('click', (event) => {

  // Prevent default on links

  event.preventDefault()

  // Hide current tab

  tabPanels[currentStep].classList.add('hidden')

  tabTargets[currentStep].classList.remove('active')

  // Show next tab

  tabPanels[currentStep + 1].classList.remove('hidden')

  tabTargets[currentStep + 1].classList.add('active')

  currentStep += 1

})
function updateStatusDisplay() {

  // If on the last step, hide the next button and show submit

  if (currentStep === tabTargets.length - 1) {

    nextButton.classList.add('hidden')

    previousButton.classList.remove('hidden')

    submitButton.classList.remove('hidden')

    validateEntry()

    // If it's the first step, hide the previous button

  } else if (currentStep == 0) {

    nextButton.classList.remove('hidden')

    previousButton.classList.add('hidden')

    submitButton.classList.add('hidden')

    // In all other instances, display both buttons

  } else {

    nextButton.classList.remove('hidden')

    previousButton.classList.remove('hidden')

    submitButton.classList.add('hidden')

  }

}
function validateEntry() {

  // Query for the current panel's Textarea input

  let input = tabPanels[currentStep].querySelector('.form-input')

  // Start by disabling the continue and submit buttons

  nextButton.setAttribute('disabled', true)

  submitButton.setAttribute('disabled', true)

  // Validate on initial function fire

  setButtonPermissions(input)

  // Validate on input

  input.addEventListener('input', () => setButtonPermissions(input))

  // Validate if blurring from input

  input.addEventListener('blur', () => setButtonPermissions(input))

}

function setButtonPermissions(input) {

  if (isEmpty(input.value)) {

    nextButton.setAttribute('disabled', true)

    submitButton.setAttribute('disabled', true)

  } else {

    nextButton.removeAttribute('disabled')

    submitButton.removeAttribute('disabled')

  }
nextButton.addEventListener('click', (event) => {

  event.preventDefault()

  // Hide current tab

  tabPanels[currentStep].classList.add('hidden')

  tabTargets[currentStep].classList.remove('active')

  // Show next tab

  tabPanels[currentStep + 1].classList.remove('hidden')

  tabTargets[currentStep + 1].classList.add('active')

  currentStep += 1

  validateEntry()

  updateStatusDisplay()

})
previousButton.addEventListener('click', (event) => {

  event.preventDefault()

  // Hide current tab

  tabPanels[currentStep].classList.add('hidden')

  tabTargets[currentStep].classList.remove('active')

  // Show the previous tab

  tabPanels[currentStep - 1].classList.remove('hidden')

  tabTargets[currentStep - 1].classList.add('active')

  currentStep -= 1

  nextButton.removeAttribute('disabled')

  updateStatusDisplay()

})


    </script>            
                
                
    <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
		
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
    </body>
    
</html>
