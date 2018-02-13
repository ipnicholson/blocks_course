class Flyer

  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status = :bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    puts "#{name} (#{email}): #{miles_flown} miles - #{status}"
  end

  if __FILE__ == $0
    flyer = Flyer.new("Amelia Earhart", "lostatsea@example.com", 234_500, :platinum)
    puts flyer
  end
end

