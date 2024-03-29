# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/move'
require_relative '../lib/player'
require_relative '../lib/errors/move_errors'

describe 'Move' do
  it 'should have valid indexes when initialized' do
    move = Move.new(1, 1, PlayerOne.new)
    expect(move.row_index).to eq(1)
    expect(move.column_index).to eq(1)
  end
  it 'should raise error when any indexes is not an integer' do
    expect { Move.new('a', 'b', PlayerOne.new) }.to raise_error(InvalidMove)
    expect { Move.new('1', '1.1', PlayerOne.new) }.to raise_error(InvalidMove)
  end

  it 'should raise error when indexes are out of range' do
    expect { Move.new(100, 200, PlayerOne.new) }.to raise_error(InvalidMove)
  end

  it 'should know which player is making a move' do
    move = Move.new(1, 1, PlayerOne.new)
    expect(move.player).to eq PlayerOne.new
  end
end
