require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

store = Store.create({
  name: "Burnaby",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
})

store = Store.create(
  name: "Richmond",
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
)

store = Store.create(
  name: "Gastown",
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: true
)

stores = Store.count
puts stores















# store_data = ["Burnaby", 300000, false, true]
# store_obj = {
#   name: "",
#   annual_revenue: 1,
#   mens_apparel: false,
#   womens_apparel: false
# } 

# keys = store_obj.keys
# # p keys

# store_data.each_with_index do |entry, index|
#   val = keys[index.to_s.to_i]
#   # p index
#   # p val
#   p store_obj[:val]
#   store_obj[:val] = entry
# end

# # p store_obj
#   # keys.each do |key|
#   #   store_obj[:key] = 
#   # end

# store = Store.create(
  
# )