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

puts flyers

puts Flyer.new("Jack Donaghy", "jack@30rock.com", 123_345)

