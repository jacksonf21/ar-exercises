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
puts "Please enter a store name"
ans = gets.chomp

store = Store.create(
  name: ans,
  annual_revenue: -123412,
  mens_apparel: false,
  womens_apparel: false
)

errs = store.errors.details
p errs

errs_keys = errs.keys

errs_keys.each do |key|
  # p errs[:name][0][:error]
  puts "#{key} - reason: #{errs[key][0][:error]}, specific: #{errs[key][0][:value]}"
end