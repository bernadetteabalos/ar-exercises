require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
average_annual_revenue = total_revenue / Store.all.count
money_makers = Store.where('annual_revenue >= ?', 1000000).count

puts "Total revenue: #{total_revenue}"
puts "Average annual revenue: #{average_annual_revenue}"
puts "Number of stores generating $1M or more: #{money_makers}"