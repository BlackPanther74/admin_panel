class HomeController < ApplicationController
  def index

    @users = User.all

    @courses = Course.all

    @cohorts = Cohort.all

    @instructors = Instructor.all

    @students = Student.all

  end
end
