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

puts Flyer.new("Jack Donaghy", "jack@30rock.com", 123_345)