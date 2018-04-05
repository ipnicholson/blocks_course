def three_times
  1.upto 3 do |n|
     yield(n)
  end
end

three_times do |number|
  puts "#{number} situp"
  puts "#{number} chinup"
  puts "#{number} pushup"
end