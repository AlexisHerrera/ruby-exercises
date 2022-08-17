#language: en

Feature: Make plays

  Scenario: User makes a move and is printed in the board
    When the first player marks a valid cell
    Then the board prints that cell with an X

  Scenario: Another player makes a move and is printed in the board as a circle
    Given the first player made a move
    When the second player marks a valid cell
    Then the board prints that cell with an 0
