# frozen_string_literal: true

require_relative 'board'
require_relative 'move'
require_relative 'player'

class TicTacToe
  def initialize
    @board = Board.new
  end

  def start_game
    print_board
    puts 'Player 1 moves. For example a valid move is: 1 1'
    move_input = gets.chomp
    @board.make_move(Move.new(move_input, Player::ONE))
    print_board

    puts 'Player 2 moves. For example a valid move is: 0 0'
    move_input = gets.chomp
    @board.make_move(Move.new(move_input, Player::TWO))
    print_board
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
