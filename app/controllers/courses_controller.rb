class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    course = Course.find(params[:id])
    course.update(
      name: params[:course][:name],
      hours: params[:course][:hours]
    )

    redirect_to course_path(course)
  end

  def destroy
    course = Course.find(params[:id])
    Course.destroy

    respond_to do |format|
      format.html
      format.js {render '/course/destroy.js.erb'}
    end

  end

  def new
    @course = Course.new
  end

  def create
    course = Course.create(
      name: params[:course][:name],
      hours: params[:course][:hours]
    )

    redirect_to courses_path
  end
end
