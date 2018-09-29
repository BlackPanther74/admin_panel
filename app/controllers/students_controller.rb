class StudentsController < ApplicationController
    # get '/students' do
    #   @students = student.all
    #   erb :index
    # end
    def index
      @students = student.all
    end
  
    # get '/students/:id' do
    #   @students = student.find(params[:id])
    #   erb :show
    # end
    def show
      @student = student.find(params[:id])
    end
  
    # get '/students/:id/edit' do
    #    erb :edit
    # end
    def edit
      @student = student.find(params[:id])
    end
  
    # put '/students/:id' do
    #   
    # end
    def update
      student = student.find(params[:id])
      student.update(
        studentname: params[:student][:studentname],
        password: params[:student][:password]
      )
  
      # goes to show page
      redirect_to student_path(student)
    end
  
    # delete '/students/:id' do
    #   
    # end
    def destroy
      student = student.find(params[:id])
      student.destroy
      # student.destroy(params[:id])
  
      redirect_to students_path
    end
  
    # get '/students/new' do
    #   erb :new
    # end
    def new
      @student = student.new
    end
  
    # get '/students' do
    #   
    # end
    def create
      student = student.create(
        studentname: params[:student][:studentname],
        password: params[:student][:password]
      )
  
      Profile.create(
        student_id: student.id
      )
  
      session[:student_id] = student.id
  
      # redirect_to '/students/new'
      redirect_to students_path
    end
  end
  
  def edit
  end

  def update
  end

  def destroy
  end
end
