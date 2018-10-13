class CohortsController < ApplicationController
  before_action :authorize

  def index
    @cohorts = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    cohort = Cohort.find(params[:id])
    cohort.update(
      name: params[:cohort][:name],
      start_date: params[:cohort][:start_date],
      end_date: params[:cohort][:end_date],
      class_size: params[:cohort][:class_size]
    )

    redirect_to cohort_path(cohort)
  end

  def destroy
    cohort = Cohort.find(params[:id])
    cohort.destroy

    respond_to do |format|
      format.html
      format.js {render '/cohorts/destroy.js.erb'}
    end

    # redirect_to cohorts_path
  end

  def new
    @cohort = Cohort.new
  end

  def create
    cohort = Cohort.create(
      name: params[:cohort][:name],
      start_date: params[:cohort][:start_date],
      end_date: params[:cohort][:end_date],
      class_size: params[:cohort][:class_size],
      course_id: params[:cohort][:course_id]
    )

    redirect_to cohorts_path
  end
end
