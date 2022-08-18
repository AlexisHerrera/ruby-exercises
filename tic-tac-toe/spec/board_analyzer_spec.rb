# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/board'
require_relative '../lib/board_analyzer'
require_relative '../lib/move'

describe 'Board analyzer' do
  let(:board) { Board.new }
  it 'should return false if game is not ended' do
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq false
  end

  it 'should return true if the first row is filled with xs' do
    player_one = PlayerOne.new
    board.make_move(Move.new(0, 0, player_one))
    board.make_move(Move.new(0, 1, player_one))
    board.make_move(Move.new(0, 2, player_one))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end
end
