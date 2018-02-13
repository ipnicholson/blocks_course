require_relative 'flyer'
require_relative 'promotion'

# Create array of Flyers objects
flyers = []

flyers << Flyer.new("Welp", "welp@example.com", 45_000, :platinum)
flyers << Flyer.new("Barry", "barry@example.com", 2_000)
flyers << Flyer.new("Anastasia", "anastasia@example.com", 25_000)
flyers << Flyer.new("Chelsea", "chelsea@example.com", 95_000, :gold)

# Create promotion
my_promotions = Promotion.new(flyers)

my_promotions.print

# Identify frequent flyers (>=3000 mi)

frequent_flyers = flyers.select { |flyer| flyer.miles_flown >= 3000 }
  puts "Frequent Flyers: #{frequent_flyers}"


infrequent_flyers = flyers.reject { |flyer| flyer.miles_flown >= 3000 }
  puts "Infrequent Flyers: #{infrequent_flyers}"

# Any flyers achieved Platinum status?

puts "\nPlatinum Flyers?:"
puts flyers.any? { |flyer| flyer.status == :platinum}

# Find first infrequent flyer

puts "\nFirst Infrequent Flyer:"
puts flyers.detect { |flyer| flyer.status == :bronze }

# flyers.each { |flyer| puts "#{flyer.name}: #{flyer.miles_flown} miles flown" }

# total = 0
# flyers.each { |flyer| total += flyer.miles_flown }
# puts "Total miles flown: #{total}"


# promotions.each { |airline, promotion| puts "Earn #{promotion.to_s}x miles by flying #{airline}!" }

# Iterators within iterators
