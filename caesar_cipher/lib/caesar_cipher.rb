def caesar_cipher(text, key)
  alphabet = ('a'..'z').to_a
  result = ''
  text.split('').each do |letter|
    index = alphabet.index(letter)
    result << alphabet[(index + key)%26]
  end
  result
end
