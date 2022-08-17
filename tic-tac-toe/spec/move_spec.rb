# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/move'

describe 'Move' do
  it 'should have valid indexes when initialized' do
    move = Move.new('1 1')
    expect(move.row_index).to eq(1)
    expect(move.column_index).to eq(1)
  end
  it 'should raise error when 2 indexes are not given' do
    expect {Move.new('1 1 1')}.to raise_error(StandardError)
    expect {Move.new('1')}.to raise_error(StandardError)
  end

  it 'should raise error when any indexes is not an integer' do
    expect {Move.new('abc def')}.to raise_error(StandardError)
  end

  it 'should raise error when indexes are out of range' do
    expect {Move.new('100 200')}.to raise_error(StandardError)
  end
end
