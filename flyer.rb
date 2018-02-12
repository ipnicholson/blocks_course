class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    puts "#{name} (#{email}): #{miles_flown} miles"
  end
end

# Create array of Flyers objects
flyers = []

1.upto(5) do |n|
  flyers << Flyer.new("Flyer #{n}", "flyer#{n}@example.com", 45_000 + n * 2300)
end

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

my_promotions = Promotion.new(flyers)

my_promotions.print


# flyers.each { |flyer| puts "#{flyer.name}: #{flyer.miles_flown} miles flown" }

# total = 0
# flyers.each { |flyer| total += flyer.miles_flown }
# puts "Total miles flown: #{total}"


# promotions.each { |airline, promotion| puts "Earn #{promotion.to_s}x miles by flying #{airline}!" }

# Iterators within iterators


