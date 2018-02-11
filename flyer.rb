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

flyers = []

1.upto(5) do |n|
  flyers << Flyer.new("flyer#{n}", "flyer#{n}@example.com", 45_000 + n * 2300)
end

# puts flyers

# puts Flyer.new("Jack Donaghy", "jack@30rock.com", 123_345)

# flyers.each { |flyer| puts "#{flyer.name}: #{flyer.miles_flown} miles flown" }

total = 0
flyers.each { |flyer| total += flyer.miles_flown }
puts "Total miles flown: #{total}"

promotions = {
  "United" => 1.5,
  "Lufthansa" => 2.0,
  "Delta" => 2.5
}

# promotions.each { |airline, promotion| puts "Earn #{promotion.to_s}x miles by flying #{airline}!" }
