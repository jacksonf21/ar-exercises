require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
Employee.create(
  store_id: 1,
  first_name: "Janet",
  last_name: "Yun",
  hourly_rate: 25,
)

Employee.create(
  store_id: 2,
  first_name: "Yun",
  last_name: "Tep",
  hourly_rate: 50,
)

Employee.create(
  store_id: 3,
  first_name: "Joe",
  last_name: "Erda",
  hourly_rate: 70,
)

Employee.create(
  store_id: 4,
  first_name: "Singe",
  last_name: "Iut",
  hourly_rate: 90,
)

Employee.create(
  store_id: 5,
  first_name: "Horace",
  last_name: "Ben",
  hourly_rate: 20,
)