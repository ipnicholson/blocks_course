# (1). block param is unavailble in surrounding scope

# 1.upto(5) do |n|
#   puts "Run #{n}"
# end

# puts n # NameError

# (2). vars instantiated inside block are unavailble in surrounding scope 

# 1.upto(5) do |n|
#   wife = "DIANA"
#   puts "Run #{n}"
# end

# puts wife # NameError

# (3). vars declared in surrounding scope are available in block scope

# name = "Ian"

# 1.upto(5) do |n; name|
#   puts "Run #{n}, #{name}"
# end

# (4). vars declared in surrounding scope are available in block scope, and can be overwritten

# name = "Ian"

# 1.upto(5) do |n|
#   name = "LUKE"
#   puts "Run #{n}, #{name}"
# end

# puts name # "LUKE"

# (5). vars can be protected in block scope, they won't overwrite vars in surrounding scope

name = "Ian"

1.upto(5) do |n; name| # name is a protected variable
  name = "LUKE"
  puts "Run #{n}, #{name}"
end

puts name # "Ian"