def roll_die
  puts "starting method"
  number = rand(1..6)
  result = yield("Larry", number)
  puts "The block returned #{result}"
end

roll_die do |person, number|
  puts "#{person} rolled #{number}"
  number * 2
  "Hello"
end