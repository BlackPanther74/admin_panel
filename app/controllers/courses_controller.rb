class CoursesController < ApplicationController
  # get '/courses' do
  #   @courses = course.all
  #   erb :index
  # end
  def index
    @courses = Course.all
  end

  # get '/courses/:id' do
  #   @courses = course.find(params[:id])
  #   erb :show
  # end
  def show
    @course = Course.find(params[:id])
  end

  # get '/courses/:id/edit' do
  #    erb :edit
  # end
  def edit
    @course = Course.find(params[:id])
  end

  # put '/courses/:id' do
  #   
  # end
  def update
    course = Course.find(params[:id])
    Course.update(
      name: params[:course][:name],
      hours: params[:course][:hours]
    )

    # goes to show page
    redirect_to course_path(course)
  end

  # delete '/courses/:id' do
  #   
  # end
  def destroy
    course = Course.find(params[:id])
    Course.destroy
    # course.destroy(params[:id])

    redirect_to courses_path
  end

  # get '/courses/new' do
  #   erb :new
  # end
  def new
    @course = Course.new
  end

  # get '/courses' do
  #   
  # end
  def create
    course = Course.create(
      name: params[:course][:name],
      hours: params[:course][:hours]
    )

    # redirect_to '/courses/new'
    redirect_to courses_path
  end
end
