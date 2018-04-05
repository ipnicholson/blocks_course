def progress
  0.step(by:10, to: 100) { |i| yield(i) }
end

progress do |percent|
  puts "#{percent}% complete"
end