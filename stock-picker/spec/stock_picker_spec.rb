require 'spec_helper'

require_relative '../lib/stock_picker'

RSpec.describe 'Stock picker' do
  it 'Should return first and last element indexes if the list is ascending ordered' do
    stock = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    expect(stock_picker(stock)).to eq [0, 8]
  end
  it 'Should return right index with unordered array' do
    stock = [17, 3, 6, 9, 15, 8, 6, 1, 10]
    expect(stock_picker(stock)).to eq [1, 4]
  end

  it 'Should return right values when lowest day is the last and the highest day is the first' do
    stock = [4, 3, 2, 1, 0]
    expect(stock_picker(stock)).to eq [0, 0]
  end
end