class CohortsController < ApplicationController
  # get '/cohorts' do
  #   @cohorts = cohort.all
  #   erb :index
  # end
  def index
    @cohorts = Cohort.all
  end

  # get '/cohorts/:id' do
  #   @cohorts = cohort.find(params[:id])
  #   erb :show
  # end
  def show
    @cohort = Cohort.find(params[:id])
  end

  # get '/cohorts/:id/edit' do
  #    erb :edit
  # end
  def edit
    @cohort = Cohort.find(params[:id])
  end

  # put '/cohorts/:id' do
  #   
  # end
  def update
    cohort = Cohort.find(params[:id])
    cohort.update(
      name: params[:cohort][:name],
      start_date: params[:cohort][:start_date],
      end_date: params[:cohort][:end_date],
      class_size: params[:cohort][:class_size]
    )

    # goes to show page
    redirect_to cohort_path(cohort)
  end

  # delete '/cohorts/:id' do
  #   
  # end
  def destroy
    cohort = Cohort.find(params[:id])
    cohort.destroy
    # cohort.destroy(params[:id])

    redirect_to cohorts_path
  end

  # get '/cohorts/new' do
  #   erb :new
  # end
  def new
    @cohort = Cohort.new
  end

  # get '/cohorts' do
  #   
  # end
  def create
    cohort = Cohort.create(
      name: params[:cohort][:name],
      start_date: params[:cohort][:start_date],
      end_date: params[:cohort][:end_date],
      class_size: params[:cohort][:class_size],
      course_id: params[:cohort][:course_id]
    )

    # Profile.create(
    #   cohort_id: cohort.id
    # )

    # session[:cohort_id] = cohort.id

    # redirect_to '/cohorts/new'
    redirect_to cohorts_path
  end
end
