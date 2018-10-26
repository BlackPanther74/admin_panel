class CohortsstudentsController < ApplicationController
  def new
    @cohortsstudent = Cohortsstudent.new
  end

  def create
    Cohortsstudent.create(
      cohort_id: params[:cohort_id],
      student_id: params[:student_id]
    )
  end
end
