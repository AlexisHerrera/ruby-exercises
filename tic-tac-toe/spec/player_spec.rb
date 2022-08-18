# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/move'

describe 'Player' do
  let(:player_one) { PlayerOne.new }
  let(:player_two) { PlayerTwo.new }

  it 'player 1 marks a cell with a cross' do
    board = Board.new
    player_one.make_move_in(board, 0, 0)
    expect(board.cross_cell_at?(0, 0)).to eq true
    expect(board.circle_cell_at?(0, 0)).to eq false
    expect(board.empty_at?(0, 0)).to eq false
  end

  it 'player 2 marks a cell with a circle' do
    board = Board.new
    player_two.make_move_in(board, 0, 0)
    expect(board.cross_cell_at?(0, 0)).to eq false
    expect(board.circle_cell_at?(0, 0)).to eq true
    expect(board.empty_at?(0, 0)).to eq false
  end
end
