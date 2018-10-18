class InstructorsController < ApplicationController
  before_action :authorize

  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    instructor = Instructor.find(params[:id])
    instructor.update(
      first_name: params[:instructor][:first_name],
      last_name: params[:instructor][:last_name],
      age: params[:instructor][:age],
      salary: params[:instructor][:salary],
      education: params[:instructor][:education],
      cohort_id: params[:instructor][:cohort_id]
    )

    redirect_to instructor_path(instructor)
  end

  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy

    respond_to do |format|
      format.html
      format.js
    end

  end

  def new
    @instructor = Instructor.new
  end

  def create
    # user = User.create(
    # )

    # Profile.create(
    #   role: "Instructor"
    #   user_id: user.id
    # )

    instructor = Instructor.create(
      first_name: params[:instructor][:first_name],
      last_name: params[:instructor][:last_name],
      age: params[:instructor][:age],
      salary: params[:instructor][:salary],
      education: params[:instructor][:education],
      # profile_id: nil,
      cohort_id: params[:instructor][:cohort_id]
    )

    redirect_to instructors_path
  end
end
