def update_word_count(hash_result, word_to_analyze)
  hash_result[word_to_analyze] = hash_result.fetch(word_to_analyze, 0) + 1
end

def substrings(text, dictionary)
  hash_result = {}
  dictionary.each do |word_to_analyze|
    text.split(" ").each do |word_text|
      update_word_count(hash_result, word_to_analyze) if word_text.downcase.include?(word_to_analyze.downcase)
    end
  end
  hash_result
end