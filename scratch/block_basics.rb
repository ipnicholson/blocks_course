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

# range = 1..10

# range.step(3) do |count|
#   puts "#{count} situp \n#{count} pushup \n#{count} chinup"
# end

# or

1.step(9, 2) do |count|
  puts "#{count} situp \n#{count} pushup \n#{count} chinup"
end