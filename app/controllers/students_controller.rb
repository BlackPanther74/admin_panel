class StudentsController < ApplicationController
  # get '/students' do
  #   @students = student.all
  #   erb :index
  # end
  def index
    @students = Student.all
  end

  # get '/students/:id' do
  #   @students = student.find(params[:id])
  #   erb :show
  # end
  def show
    @student = Student.find(params[:id])
  end

  # get '/students/:id/edit' do
  #    erb :edit
  # end
  def edit
    @student = Student.find(params[:id])
  end

  # put '/students/:id' do
  #   
  # end
  def update
    student = Student.find(params[:id])
    Student.update(
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name],
      age: params[:student][:age],
      education: params[:student][:education]
    )

    # goes to show page
    redirect_to student_path(student)
  end

  # delete '/students/:id' do
  #   
  # end
  def destroy
    student = Student.find(params[:id])
    Student.destroy
    # student.destroy(params[:id])

    redirect_to students_path
  end

  # get '/students/new' do
  #   erb :new
  # end
  def new
    @student = Student.new
  end

  # get '/students' do
  #   
  # end
  def create
    student = Student.create(
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name],
      age: params[:student][:age],
      education: params[:student][:education]
    )

    Profile.create(
      student_id: student.id
    )

    # session[:student_id] = student.id

    # redirect_to '/students/new'
    redirect_to students_path
  end
end
