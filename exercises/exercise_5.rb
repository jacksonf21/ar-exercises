require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_rev = Store.all.sum("annual_revenue")
puts "Total Revenue: #{total_rev}"

store_count = Store.count

avg_rev = total_rev / store_count
puts "Average Revenue: #{avg_rev}"

@stores_over_1M = Store.where(
  "annual_revenue > ?", 1000000
)

@stores_over_1M.each do |store|
  puts store[:name]
  puts store[:annual_revenue]
end
