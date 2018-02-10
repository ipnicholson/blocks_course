# 1.upto(3) do |n|
#   puts "Time ##{n}"
# end

# class Order
#   attr_reader :email, :total
  
#   def initialize(email, total)
#     @email = email
#     @total = total
#   end

#   def to_s
#     puts "#{@email}: #{@total}"
#   end
# end

# orders = []

# 1.upto(5) do |n|
#   orders << Order.new("customer#{n}@example.com", 12.34 + n)
# end

# puts orders

# 1.upto(5) do |count|
#   puts "#{count} situp \n#{count} pushup \n#{count} chinup"
# end

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