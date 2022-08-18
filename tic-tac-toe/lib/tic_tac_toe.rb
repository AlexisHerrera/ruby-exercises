# frozen_string_literal: true

require_relative 'board'
require_relative 'move'
require_relative 'player'
require_relative 'board_analyzer'
require_relative 'errors/board_errors'
require_relative 'errors/move_errors'

class TicTacToe
  def initialize
    @board = Board.new
    @board_analyzer = BoardAnalyzer.new(@board)
    @players = [PlayerOne.new, PlayerTwo.new]
  end

  # rubocop: disable Metrics/MethodLength:
  def start_game
    turn = 0
    loop do
      print_board
      print_message_turn(turn)
      move_input = gets.chomp
      next if move_input.split.size != 2

      begin
        @board.make_move(Move.new(index_row_parse(move_input), index_column_parse(move_input), get_player(turn)))
      rescue OccupiedCellError, InvalidMove
        next
      end

      turn += 1
      break if @board_analyzer.game_finished?
    end
    print_winner_message
  end

  # rubocop: enable Metrics/MethodLength:
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

  def index_row_parse(input)
    input.split[0]
  end

  def index_column_parse(input)
    input.split[1]
  end
  def print_winner_message
    print_board
    puts 'Player one wins' if @board_analyzer.player_one_won?
    puts 'Player two wins' if @board_analyzer.player_two_won?
    puts "It's a draw, play again!" if @board_analyzer.draw?
  end
end
