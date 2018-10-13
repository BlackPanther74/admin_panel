class Instructor < ApplicationRecord
  belongs_to :cohort, {optional: true}

  validates_presence_of :first_name, :last_name, :age, :education, :salary
  validates :age, numericality: {only_interger: true, greater_than: 0, less_than: 150,  message: "Please enter age!"}
  validates :salary, numericality: (greater_than: 0, message: "Please enter an amount greater than $0")
end
