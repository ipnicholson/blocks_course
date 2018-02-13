module Words
  WORDS = %w(steelhead manzanita toyon halibut kelp condor)

  long_words = WORDS.select { |word| word.length > 5 }
  puts long_words

  short_words = WORDS.reject { |word| word.length > 5 }
  puts short_words

end