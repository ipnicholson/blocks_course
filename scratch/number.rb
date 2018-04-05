def n_times(number)
  1.upto(number) do |count|
    yield(count)
  end
end

n_times(7) do |n|
  puts "#{n} situp"
  puts "#{n} chinup"
  puts "#{n} pushup"
end
