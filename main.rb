!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'luggage'
require_relative 'rental'

bike = Bike.new(id: 1, color: :pink, price: 99.99)
luggage = Luggage.new(items: [:apple, :water, :protein_bar])

rental = Rental.new(bike, luggage)

puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"

