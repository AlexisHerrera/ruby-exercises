# frozen_string_literal: true

require_relative 'board'
require_relative 'move'
require_relative 'player'
require_relative 'board_analyzer'

class TicTacToe
  def initialize
    @board = Board.new
    @board_analyzer = BoardAnalyzer.new(@board)
  end

  def start_game
    players = [Player::ONE, Player::TWO]
    messages = ['Player 1 moves. For example a valid move is: 1 1', 'Player 2 moves. For example a valid move is: 0 0']
    turn = 0
    loop do
      print_board
      puts messages[turn % 2]
      move_input = gets.chomp
      @board.make_move(Move.new(move_input, players[turn % 2]))
      turn += 1
      break if @board_analyzer.game_finished?
    end
  end

  def print_board
    (0..2).each do |row_index|
      (0..2).each do |column_index|
        print '_' if @board.empty_at?(row_index, column_index)
        print 'X' if @board.cross_cell_at?(row_index, column_index)
        print 'O' if @board.circle_cell_at?(row_index, column_index)
        print ' | '
      end
      puts ' '
    end
  end
end
