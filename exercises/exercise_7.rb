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
class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :numericality => { greater_than_or_equal_to: 40, less_than: 200 }
  validates :store_id, presence: true
end 

class Store
  validates :name, length: {minimum: 3}
  validates :annual_revenue, :numericality => { only_integer: true, greater_than: 0}
end 

puts "Please enter a new store name:"
print "> "
new_store = gets.chomp

@store7 = Store.create(name: new_store)
error_messages = @store7.errors.full_messages

error_messages.each do |error|
  puts "Error! #{error}"
end
