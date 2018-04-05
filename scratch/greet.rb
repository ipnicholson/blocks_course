def greet
  yield
end

greet do |name, age|
  puts "Hello #{name}. You don't look #{age}."
end