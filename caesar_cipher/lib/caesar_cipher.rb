def caesar_cipher(text, key)
  return text if key.zero?
  alphabet = ("a".."z").to_a
  result = ""
  text.split('').each do |letter|
    index = alphabet.index(letter)
    result << alphabet[index + 1]
  end
  result
end
