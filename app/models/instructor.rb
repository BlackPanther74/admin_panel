class Instructor < ApplicationRecord
  belongs_to :cohort, {optional: true}

  validates_presence_of :first_name, :last_name, :age, :education, :salary
  validates :age, numericality: {only_integer: true, greater_than: 0, less_than: 150,  alert: "Please enter a valid age! (< 151)"}
  validates :salary, numericality: {only_integer: true, greater_than: 0, alert: "Please enter an amount greater than $0"}
end
