require_relative 'flyer'

class Promotion

  PROMOTIONS = {
    "United" => 1.5,
    "Lufthansa" => 2.0,
    "Delta" => 2.5
  }

  def initialize(flyers) # array of Flyers objects
    @flyers = flyers
  end

  def print
    @flyers.each do |flyer|
      PROMOTIONS.each do |airline, multiplier|
        puts "#{flyer.name} could earn #{flyer.miles_flown * multiplier} miles by flying #{airline}!"
      end
    end
  end

end