module Scores

  scores = [83, 71, 92, 64, 98, 87, 75, 69]

  high_scores = scores.select { |score| score > 80 }
  puts "High Scores: #{high_scores}"

  low_scores = scores.reject { |score| score > 80 }
  puts "Low Scores: #{low_scores}"

  failing = scores.any? { |score| score < 70 }
  puts "Failing Scores?: #{failing}"

  first_failing_score = scores.detect { |score| score < 70 }
  puts first_failing_score

  # Permanently kick out all even scores
  scores.reject! { |score| score.even? }
  puts scores

  # Permanently delete scores < 70
  scores.reject! { |score| score < 70 }
  puts scores

end