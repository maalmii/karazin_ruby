def abbreviate_words(word_list)
  abbreviations = []

  word_list.each do |word|
    abbreviation = word.split.map { |word| word[0].upcase }.join
    abbreviations << abbreviation
  end

  abbreviations
end


words = ["central", "processing", "unit"]
abbreviations = abbreviate_words(words)

abbreviations.each { |abbreviation| puts abbreviation }
