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
end

describe 'Game finished if 3 cross in a row' do
  let(:board) { Board.new }
  it 'should return true if the first row is filled with Xs' do
    player_one = PlayerOne.new
    board.make_move(Move.new(0, 0, player_one))
    board.make_move(Move.new(0, 1, player_one))
    board.make_move(Move.new(0, 2, player_one))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end
  it 'should return true if the second row is filled with Xs' do
    player_one = PlayerOne.new
    board.make_move(Move.new(1, 0, player_one))
    board.make_move(Move.new(1, 1, player_one))
    board.make_move(Move.new(1, 2, player_one))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end

  it 'should return true if the second row is filled with Xs' do
    player_one = PlayerOne.new
    board.make_move(Move.new(2, 0, player_one))
    board.make_move(Move.new(2, 1, player_one))
    board.make_move(Move.new(2, 2, player_one))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end
end

describe 'Game finished if 3 cross in a column' do
  let(:board) { Board.new }
  it 'should return true if the first column is filled with Xs' do
    player_one = PlayerOne.new
    board.make_move(Move.new(0, 0, player_one))
    board.make_move(Move.new(1, 0, player_one))
    board.make_move(Move.new(2, 0, player_one))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end
  it 'should return true if the second column is filled with Xs' do
    player_one = PlayerOne.new
    board.make_move(Move.new(0, 1, player_one))
    board.make_move(Move.new(1, 1, player_one))
    board.make_move(Move.new(2, 1, player_one))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end

  it 'should return true if the second column is filled with Xs' do
    player_one = PlayerOne.new
    board.make_move(Move.new(0, 2, player_one))
    board.make_move(Move.new(1, 2, player_one))
    board.make_move(Move.new(2, 2, player_one))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end
end

describe 'Game finished if 3 cross in a diagonal' do
  let(:board) { Board.new }
  it 'should return true if the first diagonal is filled with Xs' do
    player_one = PlayerOne.new
    board.make_move(Move.new(0, 0, player_one))
    board.make_move(Move.new(1, 1, player_one))
    board.make_move(Move.new(2, 2, player_one))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end
  it 'should return true if the second diagonal is filled with Xs' do
    player_one = PlayerOne.new
    board.make_move(Move.new(0, 2, player_one))
    board.make_move(Move.new(1, 1, player_one))
    board.make_move(Move.new(2, 0, player_one))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end
end

# CIRCLES
describe 'Game finished if 3 circles in a row' do
  let(:board) { Board.new }
  it 'should return true if the first row is filled with Os' do
    player_two = PlayerTwo.new
    board.make_move(Move.new(0, 0, player_two))
    board.make_move(Move.new(0, 1, player_two))
    board.make_move(Move.new(0, 2, player_two))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end
  it 'should return true if the second row is filled with Os' do
    player_two = PlayerTwo.new
    board.make_move(Move.new(1, 0, player_two))
    board.make_move(Move.new(1, 1, player_two))
    board.make_move(Move.new(1, 2, player_two))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end

  it 'should return true if the second row is filled with Os' do
    player_two = PlayerTwo.new
    board.make_move(Move.new(2, 0, player_two))
    board.make_move(Move.new(2, 1, player_two))
    board.make_move(Move.new(2, 2, player_two))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end
end

describe 'Game finished if 3 circles in a column' do
  let(:board) { Board.new }
  it 'should return true if the first column is filled with Os' do
    player_two = PlayerTwo.new
    board.make_move(Move.new(0, 0, player_two))
    board.make_move(Move.new(1, 0, player_two))
    board.make_move(Move.new(2, 0, player_two))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end
  it 'should return true if the second column is filled with Os' do
    player_two = PlayerTwo.new
    board.make_move(Move.new(0, 1, player_two))
    board.make_move(Move.new(1, 1, player_two))
    board.make_move(Move.new(2, 1, player_two))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end

  it 'should return true if the second column is filled with Os' do
    player_two = PlayerTwo.new
    board.make_move(Move.new(0, 2, player_two))
    board.make_move(Move.new(1, 2, player_two))
    board.make_move(Move.new(2, 2, player_two))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end
end

describe 'Game finished if 3 circles in a diagonal' do
  let(:board) { Board.new }
  it 'should return true if the first diagonal is filled with Os' do
    player_two = PlayerTwo.new
    board.make_move(Move.new(0, 0, player_two))
    board.make_move(Move.new(1, 1, player_two))
    board.make_move(Move.new(2, 2, player_two))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end
  it 'should return true if the second diagonal is filled with Os' do
    player_two = PlayerTwo.new
    board.make_move(Move.new(0, 2, player_two))
    board.make_move(Move.new(1, 1, player_two))
    board.make_move(Move.new(2, 0, player_two))
    analyzer = BoardAnalyzer.new(board)
    expect(analyzer.game_finished?).to eq true
  end
end

describe 'Game finished by draw' do
  let(:board) { Board.new }
  it 'should return true if there are no winners no one has won' do
    player_one = PlayerOne.new
    player_two = PlayerTwo.new
    board.make_move(Move.new(0, 0, player_one))
    board.make_move(Move.new(1, 1, player_one))
    board.make_move(Move.new(1, 2, player_one))
    board.make_move(Move.new(2, 1, player_one))

    board.make_move(Move.new(0, 1, player_two))
    board.make_move(Move.new(0, 2, player_two))
    board.make_move(Move.new(1, 0, player_two))
    board.make_move(Move.new(2, 0, player_two))
    board.make_move(Move.new(2, 2, player_two))
    analyzer = BoardAnalyzer.new(board)

    expect(analyzer.player_one_won?).to eq false
    expect(analyzer.player_two_won?).to eq false
    expect(analyzer.game_finished?).to eq true
  end
end
