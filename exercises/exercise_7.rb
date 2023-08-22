require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :store_id, presence: { message: "must not be blank" }
  validates :hourly_rate,  numericality: { only_integer: true, message: "must be an integer" }, inclusion: { in: (40..200), message: "must be between 40 and 200" }
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3, message: "must be at least 3 characters long" }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "must be a non-negative integer" }
  validate :carry_apparel

  def carry_apparel
    unless mens_apparel || womens_apparel
      errors.add(:mens_apparel, "must carry at least one of the men's or women's apparel")
      errors.add(:womens_apparel, "must carry at least one of the men's or women's apparel")
    end
  end
end


print 'Input a store name: '
store_name = gets.chomp
store = Store.create(name: store_name)
# print out error messages
puts store.errors.full_messages
