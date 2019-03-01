
puts "creating seed data"

Restaurant.destroy_all

Restaurant.create!([{
  name: "Sottocasa NYC",
  address: "298 Atlantic Ave, Brooklyn, NY 11201",
},
{
  name: "PizzArte",
  address: "69 W 55th St, New York, NY 10019",
},
{
  name: "San Matteo NYC",
  address: "1559 2nd Ave, New York, NY 10028"
}])

Pizza.create(name: 'Supreme', ingredients: 'everything...', restaurant_id: 1)
Pizza.create(name: 'Italiano', ingredients: 'prosciutto, arugula, parmesan ovals', restaurant_id: 2)
Pizza.create(name: 'The Asian', ingredients: 'kimchi, marinated short ribs, sriracha', restaurant_id: 3)

puts "completed seed data"
