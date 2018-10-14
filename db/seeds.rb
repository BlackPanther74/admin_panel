# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.create(name: 'Full Stack Web Developer',
  hours: 450
  )
Course.create(name: 'Software Engineering Intensive',
   hours: 560)
Cohort.create(name: 'March - FSWD',
start_date: "3/1/2018",
end_date: "6/15/2018",
course_id: 1)
Cohort.create(name: 'August - SEI',
start_date: "8/1/2018",
end_date: "11/15/2018",
course_id: 1)
Cohort.create(name: 'July - FSWD',
start_date: "7/23/2018",
end_date: "11/1/2018",
course_id: 1)
Instructor.create(first_name: 'Miller',
      last_name:'Thyme',
      age: 30,
      salary: 50000,
      education: 'Masters',
      cohort_id: 1)
Instructor.create(first_name: 'Big',
      last_name: 'Red',
      age: 28,
      salary: 65000,
      education: 'PhD',
      cohort_id: 2)
Instructor.create(first_name: 'Miami',
      last_name: 'Carabana',
      age: 34,
      salary: 70000,
      education: 'PhD',
      cohort_id: 3)
Student.create(first_name: 'Janice',
      last_name: 'Hughes',
      age: 25,
      education: 'College')
Student.create(first_name: 'Franklin',
      last_name: 'Bado',
      age: 28,
      education: 'College')
StudentsCohort.create(student_id: 1,
            cohort_id: 1)
StudentsCohort.create(student_id: 1,
            cohort_id: 2)
StudentsCohort.create(student_id: 2,
            cohort_id: 1)