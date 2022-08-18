# frozen_string_literal: true

require_relative 'board'
require_relative 'move'
require_relative 'player'
require_relative 'board_analyzer'

class TicTacToe
  def initialize
    @board = Board.new
    @board_analyzer = BoardAnalyzer.new(@board)
    @players = [PlayerOne.new, PlayerTwo.new]
  end

  def start_game
    turn = 0
    loop do
      print_board
      print_message_turn(turn)
      move_input = gets.chomp
      @board.make_move(Move.new(move_input, get_player(turn)))
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

  private

  def print_message_turn(turn)
    messages = ['Player 1 moves. For example a valid move is: 1 1', 'Player 2 moves. For example a valid move is: 0 0']
    puts messages[turn % 2]
  end

  def get_player(turn)
    @players[turn % 2]
  end
end
