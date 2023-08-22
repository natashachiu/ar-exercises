require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employees < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "Amy", last_name: "Ackers", hourly_rate: 50)

@store1.employees.create(first_name: "Bryce", last_name: "Baker", hourly_rate: 40)

@store2.employees.create(first_name: "Chris", last_name: "Cohen", hourly_rate: 90)

@store2.employees.create(first_name: "Dilan", last_name: "Davies", hourly_rate: 80)

@store2.employees.create(first_name: "Esme", last_name: "Eaton", hourly_rate: 60)