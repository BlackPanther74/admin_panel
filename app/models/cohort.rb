class Cohort < ApplicationRecord
  belongs_to :course
  has_one :instructor
  has_many :cohortsstudents
  has_many :students, through: :cohortsstudents

  validates_presence_of :name, :start_date, :end_date

end
