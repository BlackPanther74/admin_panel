class Student < ApplicationRecord
  has_many :cohortsstudents
  has_many :cohorts, through: :cohortsstudents
end
