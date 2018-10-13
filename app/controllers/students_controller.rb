class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    student.update(
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name],
      age: params[:student][:age],
      education: params[:student][:education]
    )

    redirect_to student_path(student)
  end

  def destroy
    student = Student.find(params[:id])
    Student.destroy

    respond_to do |format|
      format.html
      format.js {render '/students/destroy.js.erb'}
    end

  end

  def new
    @student = Student.new
  end

  def create
    student = Student.create(
        first_name: params[:student][:first_name],
        last_name: params[:student][:last_name],
        age: params[:student][:age],
        education: params[:student][:education],
        profile_id: nil
      )

    redirect_to students_path
  end
end
