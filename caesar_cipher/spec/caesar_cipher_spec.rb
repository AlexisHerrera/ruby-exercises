# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/caesar_cipher'

RSpec.describe 'Caesar Cipher' do
  describe 'Caesar Cipher without shifting' do
    it 'Cipher with 0 should return the same text' do
      text_to_cipher = 'hello'
      expect(caesar_cipher(text_to_cipher, 0)).to eq 'hello'
    end
  end
end
