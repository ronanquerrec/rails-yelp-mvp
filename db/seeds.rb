# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Septime',
    address:      'rue st-maur',
    phone_number: '01 02 03 04 05',
    category:     'japanese'
  },
  {
    name:         'Chateaubriand',
    address:      'parmentier',
    phone_number: '01 02 03 04 05',
    category:     'chinese'
  },
    {
    name:         'fuxia',
    address:      'rue rue',
    phone_number: '01 02 03 04 05',
    category:     'belgian'
  },
    {
    name:         'flunch',
    address:      'rue de lapaix',
    phone_number: '01 02 03 04 05',
    category:     'japanese'
  },
    {
    name:         'unico',
    address:      'rue st-maurice',
    phone_number: '01 02 03 04 05',
    category:     'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
