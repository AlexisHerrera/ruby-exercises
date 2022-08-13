require 'spec_helper'
require_relative '../lib/bubble_sort'

RSpec.describe 'Bubble sort' do
  it 'should do nothing if array is sorted' do
    array = [1, 2, 3, 4]
    expect(bubble_sort(array)).to eq([1, 2, 3, 4])
  end
  it 'should sort a two element array if is unsorted' do
    array = [2, 1]
    expect(bubble_sort(array)).to eq([1,2])
  end
  it 'should sort an array if is last two elements are unsorted' do
    array = [1, 2, 4, 3]
    expect(bubble_sort(array)).to eq([1,2, 3, 4])
  end
  it 'should sort an sorted inversed array' do
    array = [4, 3, 2, 1]
    expect(bubble_sort(array)).to eq([1, 2, 3, 4])
  end
  it 'should sort a long unsorted array' do
    array = [25, 28, 51, 54, 82, 62, 61, 78, 34, 72, 38, 35, 79, 7, 1, 81, 63, 27, 23, 73, 13, 47, 66, 57, 50, 88, 15, 59, 2, 56, 74, 64, 75, 17, 10, 65, 84, 24, 69, 16]
    expect(bubble_sort(array)).to eq(array.sort)
  end
end
