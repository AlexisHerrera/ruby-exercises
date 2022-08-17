#language: en

Feature: Make plays

  Scenario: User makes a move and is printed in the board
    When the first player marks a valid cell
    Then the board prints that cell with an X

  Scenario: Another player makes a move and is printed in the board as a circle
    Given the first player made a move
    When the second player marks a valid cell
    Then the board prints that cell with an 0

  Scenario: Player wins a match
    Given the first player marks a complete row except for one cell
    And the second player is not one move away from winning
    When the first player completes the row
    Then the game ends
    And Congratulates the first player