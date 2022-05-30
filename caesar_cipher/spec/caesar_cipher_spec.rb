require 'spec_helper'
require_relative '../lib/caesar_cipher'

RSpec.describe 'Caesar Cipher' do
  describe 'Caesar Cipher without shifting' do
    it 'Cipher with key 0 should return the same text' do
      text_to_cipher = 'hello'
      expect(caesar_cipher(text_to_cipher, 0)).to eq 'hello'
    end
  end
  describe 'Caesar Cipher shifting 1' do
    it 'Cipher with key 1 should shift in 1 position' do
      text_to_cipher = 'hello'
      expect(caesar_cipher(text_to_cipher, 1)).to eq 'ifmmp'
    end
  end
end
