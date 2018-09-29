class Student < ApplicationRecord
  has_many :cohorts, through :cohortsstudents
end
