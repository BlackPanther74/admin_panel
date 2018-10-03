class InstructorsController < ApplicationController
  # get '/instructors' do
  #   @instructors = instructor.all
  #   erb :index
  # end
  def index
    @instructors = Instructor.all
  end

  # get '/instructors/:id' do
  #   @instructors = instructor.find(params[:id])
  #   erb :show
  # end
  def show
    @instructor = Instructor.find(params[:id])
  end

  # get '/instructors/:id/edit' do
  #    erb :edit
  # end
  def edit
    @instructor = Instructor.find(params[:id])
  end

  # put '/instructors/:id' do
  #   
  # end
  def update
    instructor = Instructor.find(params[:id])
    Instructor.update(
      first_name: params[:instructor][:first_name],
      last_name: params[:instructor][:last_name],
      age: params[:instructor][:age],
      salary: params[instructor][:salary],
      education: params[:instructor][:education]
    )

    # goes to show page
    redirect_to instructor_path(instructor)
  end

  # delete '/instructors/:id' do
  #   
  # end
  def destroy
    instructor = Instructor.find(params[:id])
    Instructor.destroy
    # instructor.destroy(params[:id])

    redirect_to instructors_path
  end

  # get '/instructors/new' do
  #   erb :new
  # end
  def new
    @instructor = Instructor.new
  end

  # get '/instructors' do
  #   
  # end
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
      profile_id: profile.id,
      cohort_id: nil
    )

    # redirect_to '/instructors/new'
    redirect_to instructors_path
  end
end
