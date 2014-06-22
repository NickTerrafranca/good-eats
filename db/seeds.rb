
restaurants = [
  {
    name: 'O Ya',
    address: '1234 Leather St',
    city: 'Boston',
    state: 'MA',
    zip_code: '02114',
    description: 'The best!',
    category: 'Japanese'
  },

  {
    name: 'Bobs Burgers',
    address: '69 Barf St',
    city: 'Cambridge',
    state: 'MA',
    zip_code: '02142',
    description: 'Crap!',
    category: 'Grease'
  },

  {
    name: 'Pauly Bag of Doughnuts',
    address: '44 Four Ave',
    city: 'Topica',
    state: 'KS',
    zip_code: '00001',
    description: 'As big as your head',
    category: 'Pastry'
  },

  {
    name: 'Eastern Standard',
    address: '1001 Comm Ave',
    city: 'Boston',
    state: 'MA',
    zip_code: '02111',
    description: 'Great food and drink. Known for craft cocktails',
    category: 'American Bistro'
  },

  {
    name: 'Lizzys',
    address: '165 Cambridge St.',
    city: 'Cambridge',
    state: 'MA',
    zip_code: '02114',
    description: 'Good food and good people',
    category: 'American bar'
  },

  {
    name: "Moe's",
    address: '165 Pleasant St.',
    city: 'Springfield',
    state: 'LM',
    zip_code: '02999',
    description: "Drink at Moe's - Wake up without a kidney!!!",
    category: 'Dive-bar'
  },

  {
    name: 'Restaurant 5',
    address: '555 Cambridge St.',
    city: 'Cambridge',
    state: 'MA',
    zip_code: '02116',
    description: "We're OK!",
    category: 'French'
  },

  {
    name: 'Rocket Science',
    address: '1 Easy St.',
    city: 'Boston',
    state: 'MA',
    zip_code: '02114',
    description: 'Artisan ice cream, locally sourced.',
    category: 'Ice Cream'
  },

  {
    name: 'The Double Skunk Saloon',
    address: '165 Cambridge St.',
    city: 'Cambridge',
    state: 'MA',
    zip_code: '02114',
    description: 'The worlds first Cribbage bar',
    category: 'American bar'
  },

  {
    name: 'Another Restaurant',
    address: '12345 Pitsville St.',
    city: 'Hell',
    state: 'SD',
    zip_code: '23523',
    description: 'A Description about the description',
    category: 'American bar'
  },

  {
    name: 'Yet Another Bar',
    address: '12345 Bourbon St.',
    city: 'New Orleans',
    state: 'LA',
    zip_code: '47263',
    description: 'That thing you are trying to brush off of your forehead... that would be the floor',
    category: 'Dive-bar'
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
