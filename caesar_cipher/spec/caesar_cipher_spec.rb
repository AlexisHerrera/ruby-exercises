require 'spec_helper'
require_relative '../lib/caesar_cipher'

RSpec.describe 'Caesar Cipher' do
  describe 'Caesar Cipher without key 0' do
    it 'Cipher should return the same text' do
      text_to_cipher = 'hello'
      expect(caesar_cipher(text_to_cipher, 0)).to eq 'hello'
    end
  end
  describe 'Caesar Cipher shifting 1' do
    it 'Cipher should shift in 1 position' do
      text_to_cipher = 'hello'
      expect(caesar_cipher(text_to_cipher, 1)).to eq 'ifmmp'
    end
    it 'Cipher should go from z to a' do
      text_to_cipher = 'lazy'
      expect(caesar_cipher(text_to_cipher, 1)).to eq 'mbaz'
    end
  end
  describe 'Caesar Cipher shifting with any natural key' do
    it 'Cipher should shift in 2 positions' do
      text_to_cipher = 'hello'
      expect(caesar_cipher(text_to_cipher, 2)).to eq 'jgnnq'
    end
    it 'Cipher should be the same if key is 26' do
      text_to_cipher = 'hello'
      expect(caesar_cipher(text_to_cipher, 26)).to eq 'hello'
    end
  end
end
