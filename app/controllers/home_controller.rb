class HomeController < ApplicationController
  before_action :authorize

  def index

    @users = User.all

    @courses = Course.all

    @cohorts = Cohort.all

    @instructors = Instructor.all

    @students = Student.all

  end
end
