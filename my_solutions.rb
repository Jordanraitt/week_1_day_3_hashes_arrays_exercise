# stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
#
#
# # Add "Edinburgh Waverley" to the end of the array
# stops.push("Edinburgh Waverley")
# # Add "Glasgow Queen St" to the start of the array
# stops.unshift("Glasgow Queen St")
# # Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")
# stops.insert(3, "Polmont")
# # Work out the index position of "Linlithgow"
# stops.index("Linlithgow")
# # Remove "Livingston" from the array using its name
# stops.delete("Livingston")
# # Delete "Cumbernauld" from the array by index
# stops.delete_at(1)
# # How many stops there are in the array?
# stops.length
# # How many ways can we return "Falkirk High" from the array?
# ary[2] slice[2]
# # Reverse the positions of the stops in the array
# stops.reverse
# # Print out all the stops using a for loop
# for des in stops
#   p des
# end
#
# users = {
#   "Jonathan" => {
#     :twitter => "jonnyt",
#     :lottery_numbers => [6, 12, 49, 33, 45, 20],
#     :home_town => "Stirling",
#     :pets => [
#     {
#       :name => "fluffy",
#       :species => "cat"
#     },
#     {
#       :name => "fido",
#       :species => "dog"
#     },
#     {
#       :name => "spike",
#       :species => "dog"
#     }
#   ]
#   },
#   "Erik" => {
#     :twitter => "eriksf",
#     :lottery_numbers => [18, 34, 8, 11, 24],
#     :home_town => "Linlithgow",
#     :pets => [
#     {
#       :name => "nemo",
#       :species => "fish"
#     },
#     {
#       :name => "kevin",
#       :species => "fish"
#     },
#     {
#       :name => "spike",
#       :species => "dog"
#     },
#     {
#       :name => "rupert",
#       :species => "parrot"
#     }
#   ]
#   },
#   "Avril" => {
#     :twitter => "bridgpally",
#     :lottery_numbers => [12, 14, 33, 38, 9, 25],
#     :home_town => "Dunbar",
#     :pets => [
#       {
#         :name => "monty",
#         :species => "snake"
#       }
#     ]
#   }
# }
#
# # Get Jonathan's Twitter handle (i.e. the string "jonnyt")
# users["Jonathan"][:twitter]
# # Get Erik's hometown
# users["Erik"][:home_town]
# # Get the array of Erik's lottery numbers
# users["Erik"][:lottery_numbers]
# # Get the type of Avril's pet Monty
# users["Avril"][:pets][0][:species]
# # Get the smallest of Erik's lottery numbers
# smallest = [users["Erik"][:lottery_numbers].sort.shift]
# # Return an array of Avril's lottery numbers that are even
# even_numbers = [users["Avril"][:lottery_numbers].select { |num| num.even?}]
# # Erik is one lottery number short! Add the number 7 to be included in his lottery numbers
# users["Erik"][:lottery_numbers].push(7)
# # Change Erik's hometown to Edinburgh
# users["Erik"][:home_town] = "Edinburgh"
# # Add a pet dog to Erik called "Fluffy"
# fluffy = {
#   name: "Fluffy",
#   species: "dog"
# }
# users["Erik"][:pets].insert(0,fluffy)
# users["Erik"][:pets]
# # Add another person to the users hash
# add_user = {
#   "Jordan" => {
#     twitter: "faffmaster",
#     lottery_numbers: [0, 0, 0, 0],
#     home_town: "Inverurie",
#     pets: "none"
#   }
# }
# users.merge(add_user)

united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# Change the capital of Wales from "Swansea" to "Cardiff".
united_kingdom[1][:capital] = "Cardiff"
# Create a Hash for Northern Ireland and add it to the united_kingdom array (The capital is Belfast, and the population is 1,811,000).
ni = {
  name: "Northern Ireland",
  population: 1811000,
  capital: "Belfast"
}
united_kingdom.insert(0, ni)
# Use a loop to print the names of all the countries in the UK.
# for country_name in united_kingdom
#   p "#{country_name[:name]}"
# end
# Use a loop to find the total population of the UK.
pop = 0

for populations in united_kingdom
pop += populations[:population]
end

p "The overall population is #{pop} people"
