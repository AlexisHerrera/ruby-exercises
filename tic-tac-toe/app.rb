# frozen_string_literal: true

require_relative 'lib/tic_tac_toe'

TicTacToe.new.start_game

# TODO: (and remove):
# Hacer 1 caso para testear la UI (https://www.codewithjason.com/test-ruby-methods-involve-puts-gets/)
# El print_board, que cada caso sea un if else .. etc
# Usar bundler (byebug, rubocop, rspec)
# Se está acoplando Player con make a move de Board?. Es necesario un test de integración?.
# Valio la pena separar el tablero con el analizador de tablero? (ver que no existe en la vida real el analizador)
# Hay una mejor manera de recorrer el tablero? Es decir: rows.find_complete(CrossCell) o algo del estilo
# Smell Player no hace casi nada
