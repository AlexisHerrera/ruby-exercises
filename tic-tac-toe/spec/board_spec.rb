# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/move'
require_relative '../lib/errors/board_errors'

require 'byebug'

describe 'Empty cell' do
  it 'knows if a cell is empty' do
    board = Board.new
    expect(board.empty_at?(0, 0)).to eq(true)
  end

  it 'can change a empty cell to a Cross Cell' do
    board = Board.new
    move_player_one = Move.new(0, 0, PlayerOne.new)
    board.make_move(move_player_one)
    expect(board.empty_at?(0, 0)).to eq false
    expect(board.cross_cell_at?(0, 0)).to eq true
  end

  it 'can change a empty cell to a Circle Cell' do
    board = Board.new
    move_player_two = Move.new(0, 0, PlayerTwo.new)
    board.make_move(move_player_two)
    expect(board.empty_at?(0, 0)).to eq false
    expect(board.circle_cell_at?(0, 0)).to eq true
  end
end

describe 'Cross cell' do
  it 'can\'t change a Cross Cell more than once ' do
    board = Board.new
    move_player_one = Move.new(0, 0, PlayerOne.new)
    board.make_move(move_player_one)
    expect { board.make_move(move_player_one) }.to raise_error(StandardError)
  end
end

describe 'Circle cell' do
  it 'can\'t change a Circle Cell more than once ' do
    board = Board.new
    move_player_two = Move.new(0, 0, PlayerTwo.new)
    board.make_move(move_player_two)
    expect { board.make_move(move_player_two) }.to raise_error(OccupiedCellError)
  end
end
