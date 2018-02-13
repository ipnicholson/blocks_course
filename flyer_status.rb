require_relative 'flyer'
require_relative 'manifest'
require_relative 'promotion'

# Instantiate Flyers objects
flyer1 = Flyer.new("Welp", "welp@example.com", 45_000, :platinum)
flyer2 = Flyer.new("Barry", "barry@example.com", 2_000)
flyer3 = Flyer.new("Anastasia", "anastasia@example.com", 25_000)
flyer4 = Flyer.new("Chelsea", "chelsea@example.com", 95_000, :gold)

# Create Manifest of Flyers objects
manifest = Manifest.new

# Add flyers to manifest
manifest.add_flyer(flyer1)
manifest.add_flyer(flyer2)
manifest.add_flyer(flyer3)
manifest.add_flyer(flyer4)

manifest.print_status
manifest.print_name_tags

puts manifest.print_miles_flown_in_km

manifest.total_miles_flown
manifest.total_km_flown

manifest.top_flyer


# # Create promotion
# my_promotions = Promotion.new(flyers)

# my_promotions.print

# # Identify frequent flyers (>=3000 mi)

# frequent_flyers = flyers.select { |flyer| flyer.miles_flown >= 3000 }
#   puts "Frequent Flyers: #{frequent_flyers}"


# infrequent_flyers = flyers.reject { |flyer| flyer.miles_flown >= 3000 }
#   puts "Infrequent Flyers: #{infrequent_flyers}"

# # Any flyers achieved Platinum status?

# puts "\nPlatinum Flyers?:"
# puts flyers.any? { |flyer| flyer.status == :platinum}

# # Find first infrequent flyer

# puts "\nFirst Infrequent Flyer:"
# puts flyers.detect { |flyer| flyer.status == :bronze }



# flyers.each { |flyer| puts "#{flyer.name}: #{flyer.miles_flown} miles flown" }

# total = 0
# flyers.each { |flyer| total += flyer.miles_flown }
# puts "Total miles flown: #{total}"


# promotions.each { |airline, promotion| puts "Earn #{promotion.to_s}x miles by flying #{airline}!" }

# Iterators within iterators
