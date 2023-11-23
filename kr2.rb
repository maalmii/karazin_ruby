def word_count(string)
  words = string.downcase.split(/\W+/) # поділ рядку на слова, ігноруючи розділові знаки і регістр
  word_count_hash = Hash.new(0) # створення хеша для зберігання кількості зустрічань слів

  words.each do |word|
    word_count_hash[word] += 1 # збільшення лічильника кожного слова у хеші
  end

  word_count_hash
end


text = "Це текст має кілька слів. Кожне слово повторюється кілька разів, слова Це, і КІЛЬКА."
result = word_count(text)

result.each do |word, count|
  puts "#{word}: #{count}"
end
