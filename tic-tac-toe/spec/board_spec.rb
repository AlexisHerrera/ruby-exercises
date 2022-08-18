# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/move'

describe 'Board' do
  it 'knows if a cell is empty' do
    board = Board.new
    expect(board.empty_at?(0, 0)).to eq(true)
  end

  it 'can change a cell to a Cross Cell' do
    board = Board.new
    move_player_one = Move.new('0 0', PlayerOne.new)
    board.make_move(move_player_one)
    expect(board.empty_at?(0, 0)).to eq false
    expect(board.cross_cell_at?(0, 0)).to eq true
  end

  it 'can change a cell to a Circle Cell' do
    board = Board.new
    move_player_two = Move.new('0 0', PlayerTwo.new)
    board.make_move(move_player_two)
    expect(board.empty_at?(0, 0)).to eq false
    expect(board.circle_cell_at?(0, 0)).to eq true
  end
end
