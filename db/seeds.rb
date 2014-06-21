
restaurants = [
  {
    name: 'O Ya',
    address: '1234 Leather St',
    city: 'Boston',
    state: 'MA',
    zip_code: 02114,
    description: 'The best!',
    category: 'Japanese'
  },

  {
    name: 'Bobs Burgers',
    address: '69 Barf St',
    city: 'Cambridge',
    state: 'MA',
    zip_code: 02142,
    description: 'Crap!',
    category: 'Grease'
  },

  {
    name: 'Pauly Bag of Doughnuts',
    address: '44 Four Ave',
    city: 'Topica',
    state: 'KS',
    zip_code: 00001,
    description: 'As big as your head',
    category: 'Pastry'
  },

  {
    name: 'Eastern Standard',
    address: '1001 Comm Ave',
    city: 'Boston',
    state: 'MA',
    zip_code: 02111,
    description: 'Great food and drink. Known for craft cocktails',
    category: 'American Bistro'
  },

  {
    name: 'Lizzys',
    address: '165 Cambridge St.',
    city: 'Cambridge',
    state: 'MA',
    zip_code: 02114,
    description: 'Good food and good people',
    category: 'American bar'
  }
]


restaurants.each do |restaurant_hash|
  restaurant_attr = {
    name: restaurant_hash[:name],
    address: restaurant_hash[:address],
    city: restaurant_hash[:city],
    state: restaurant_hash[:state],
    zip_code: restaurant_hash[:zip_code],
    description: restaurant_hash[:description],
    category: restaurant_hash[:category]
  }

  restaurant = Restaurant.find_by(restaurant_attr)
  restaurant ||= Restaurant.create!(restaurant_attr)

  if !Restaurant.exists?(restaurant_attr)
    Restaurant.create!(restaurant_attr)
  end
end
