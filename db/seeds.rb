# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

barbers = Barber.create(
  [
    { name: 'David', phone: '555-555-5555', shop_name: 'Goodfellas', zip: '02145', services: 'Fade and lineup', max_price: 20, busiest_day: 'Saturday', busiest_time: '11:30', average_rating: 4.5 },
    { name: 'Butch', phone: '111-222-3333', shop_name: "De Ben's", zip: '02149', services: 'Taper fade', max_price: 18, busiest_day: 'Saturday', busiest_time: '12:00', average_rating: 3.8 },
    { name: 'Wynter', phone: '781-391-2678', shop_name: 'Prime Time Cutz', zip: '02155', services: 'Fade and lineup', max_price: 15, busiest_day: 'Monday', busiest_time: '02:00', average_rating: 4.3 },
    { name: 'Curtis', phone: '617-890-9008', shop_name: 'Allston Brothers', zip: '02134', services: 'Full cut', max_price: 25, busiest_day: 'Wednesday', busiest_time: '05:00', average_rating: 3.6 }
  ]
)
