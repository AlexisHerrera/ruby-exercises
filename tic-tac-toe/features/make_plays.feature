#language: en

Feature: Make plays

  Scenario: User makes a move and is printed in the board
    When the first player marks a valid cell
    Then the board prints that cell with an X

