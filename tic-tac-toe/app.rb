# frozen_string_literal: true

require_relative 'lib/tic_tac_toe'

TicTacToe.new.start_game

# TODO: (and remove):
# 1. Hacer superclase para cell. DONE
# 2. que el tablero reciba movimientos solo con make_move y que delegue si hacer una cruz o un circulo
# 3. que el Move tambien incluya otros datos como metadata (que jugador -> que simbolo hacer, etc)
# 4. Testear el move (validar gets)
# 5. Hacer 1 caso para testear la UI (https://www.codewithjason.com/test-ruby-methods-involve-puts-gets/)
