## Welcome To EduFI
### Welcome To EduFi the education portal of the future.

**Your tasks, if you decide to complete them are to:**
<li>Create a student transfer page that will transfer one student from one school to another. If the student has an enrollment display a message letting the user know the student cannot be moved because he or she has an active enrollment.</li>
<li>Run the controller tests and fix all the tests that are currently erroring.</li>
<li>Bonus one: feel free to refactor any code or architectural decision you think could be improved.</li>
<li>Bonus two: Integrate the Google Maps API, or any other MAP api to show a map of the School based on its location.</li>
<b>Good luck.</b>

**Notes:**
<b>Please work on this repo, committing your work. When complete please zip the repo back up and email it to jwindholtz@everfi.com</b>
<b>Preferrably try to complete this within 7 days of receipt.  Please don't spend more then 2 hours on this take home project.


Nico's notes:
After reviewing the code I decided to have a transfer create an enrollment. 
Transfer should have what enrollment needs:
student, school, cohort, starting date, and ending date.

Tasks:
1. add pry to gemfile to inspect code.
2. Create a transfer object, controller, and view. I'll try to stay as close as possible to the existing code for consistency.
  a. Transfer object
  b. Controller/routes
  c. Views new, show.


  - [x] rails g model Transfer student:references school:references cohort:references start_date:date end_date:date
  - [x] created database and ran migrations
  - [x] rails g controller Transfers index show new create
  - [x] Set up initial transfer controller test  
  - [x] moved pry to the development test group.
  - [x] I am now trying to mimic then enrollment tests a bit since they should be similar based on that I want to create enrollments through transfer
  - [x] added back root path I accidentally deleted when editing the routes
  - [x] Mimicking enrollments controller set up some before_action methods and strong params

### Note 1: 
Using RSpec I would check the validations and relationships but I haven't done that with Test. I will move forward for time sake and comeback to it if I still have time.

