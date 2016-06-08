The objective of my APP, personalized learning, is to provide orientation for students using a learning management system, in what task of a course to do next, based on their past activity.

a) When a student starts the course, there is a Welcome message with a motivational video explaining why learning to code is important

b) When the student starts to submit tasks (which can be video lessons, readings, or homeworks), the system saves the data as a submission and tells the student what to do next.
c) At any time, student can check the syllabuss, and see which tasks belong to each module.

d) Students can also check the tasks, but only can access to those that are available for them (depending on past activity)

e) When students go to each task, they will find a page that follows this structure
    1) Watch this video (stored in Task.video_url)
    2) Follow these guidelines (stored in Task.content)
    3) Read these resources (stored in Task.url,Task.external1,Task.external2)
    4) Submit the Task by filling a form ( Comments, Link to Github, Time_spent and Task Rating)

f) When a student finished the whole course, a Congratulations Message emerges and invites the student to try a new course.
g) There is a different type of user, named "admin", that has a different use of the product. Admins can
      a) Add, edit, delete new modules and tasks (student's can't)
      b) The can view all submissions of all students (students can only see theirs)

      So far, the logic is based on a condition related to if current_user.name=="admin", but the next step would be to create a table of admins with their user.id so that is easier to add more than one admin.
