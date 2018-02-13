require_relative 'flyer'

class Manifest
  attr_reader :flyers

  def initialize
    @flyers = [] # array of flyers
  end

  def add_flyer(flyer) # flyer object
    @flyers << flyer
  end

  def print_status
    platinum, coach = @flyers.partition { |flyer| flyer.status == :platinum }
    puts "\nPlatinum Flyer(s):\n#{platinum}"
    puts "\nCoach Flyer(s):\n#{coach}"
  end

  def print_name_tags
    puts "\nName Tags:"
    @flyers.each { |flyer| puts "#{flyer.name} (#{flyer.status.upcase})"}
  end

  def print_miles_flown_in_km
    km_flown = @flyers.map { |flyer| flyer.miles_flown * 1.6 }
  end

  def total_miles_flown
    total_miles_flown = @flyers.map { |flyer| flyer.miles_flown}.reduce(:+)
    puts "\nTotal Miles Flown: #{total_miles_flown}"
  end

  def total_km_flown
    total_miles_flown = @flyers.map { |flyer| flyer.miles_flown * 1.6}.reduce(:+)
    puts "\nTotal km Flown: #{total_miles_flown}"
  end

  def top_flyer
    top_flyer = @flyers.max_by { |flyer| flyer.miles_flown }
    puts "\nTop Flyer:"
    puts top_flyer
  end

end