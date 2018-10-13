class Course < ApplicationRecord
  has_many :cohorts

  validates_presence_of :name
  validates :hours, numericality: {only_interger: true, greater_than: 0,  message: "Courses must be at least 1 hour long!"}
end
