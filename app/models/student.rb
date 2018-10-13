class Student < ApplicationRecord
  has_many :cohortsstudents
  has_many :cohorts, through: :cohortsstudents

  validates_presence_of :first_name, :last_name, :age, :education
  validates :age, numericality: {only_interger: true, greater_than: 0, less_than: 150,  message: "Please enter a valid age! (< 151)"}
end
