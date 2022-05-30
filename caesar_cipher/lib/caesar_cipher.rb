def caesar_cipher(text, key)
  text.chars.map { |letter| cipher_letter(letter, key) }.join
end

def cipher_letter(char, key)
  return char if char.upcase == char.downcase # is not a char

  alphabet = char.downcase == char ? ('a'..'z').to_a : ('A'..'Z').to_a
  alphabet[(alphabet.index(char) + key) % alphabet.length]
end
