# Overwriting the built-in #times method

class Integer # add n_times as instance method for Integer
  def my_times
    1.upto(self) do |n|
      puts "Yielding #{n}"
      yield(n)
    end
  end
end

7.my_times { |n| puts "#{n} Echo!" }