weekdays = %w[Monday Tuesday Wednesday Thursday Friday]

class Array
  def my_each
    for i in 0..(self.length-1)
      yield(self[i])
    end
  end
end

weekdays.my_each { |day| puts "Today is #{day}" }