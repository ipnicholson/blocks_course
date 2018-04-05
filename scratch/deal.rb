def deal(num_cards)
  faces = %w(Jack Queen King Ace)
  suits = %w(Aces Hearts Clubs Diamonds)

  if block_given?
    num_cards.times do
      random_face = faces.sample
      random_suit = suits.sample

      score = yield(random_face, random_suit)
      puts "You scored a #{score}!"
    end
  else
    puts "No deal!"
  end

end

deal(5) do |face, suit|
  puts "Dealt a #{face} of #{suit}"
  score = face.length + suit.length
end