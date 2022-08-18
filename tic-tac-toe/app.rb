# frozen_string_literal: true

require_relative 'lib/tic_tac_toe'

TicTacToe.new.start_game

# TODO: (and remove):
# 1. Hacer superclase para cell. => DONE
# 2. que el tablero reciba movimientos solo con make_move y que delegue si hacer una cruz o un circulo => DONE
# 3. que el Move tambien incluya otros datos como metadata (que jugador -> que simbolo hacer, etc) => DONE
# 4. Testear el move (validar gets) => DONE
# 5. Hacer 1 caso para testear la UI (https://www.codewithjason.com/test-ruby-methods-involve-puts-gets/)
# 6. El print_board, que cada caso sea un if else .. etc
# 7. Sacar StandardError para Move y hacer uno menos genérico.
# 8. Usar bundler (byebug, rubocop, rspec)
# 9. Se está acoplando Player con make a move de Board?. Es necesario un test de integración?.
# 10. En vez de hacer Move.new(string) hacer Move.new(idx1, idx2, player) (tal vez asumir PlayerOne como default?) => OK
# 11. Hacer exclusivo cada tipo de estado de celda, ie: Empty, Cross y Circle (hacer un test que verifique esto)
