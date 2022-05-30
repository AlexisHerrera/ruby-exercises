def caesar_cipher(text, key)
  alphabet = ('a'..'z').to_a
  text.chars.map { |letter| alphabet[(alphabet.index(letter) + key) % alphabet.length] }.join('')
end
