# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/board'

describe 'Board' do
  it 'knows if a cell is empty' do
    board = Board.new
    expect(board.empty_at?(0, 0)).to eq(true)
  end

  it 'can change a cell to a Cross Cell' do
    board = Board.new
    board.make_a_cross_at(0, 0)
    expect(board.empty_at?(0, 0)).to eq false
    expect(board.is_a_cross_cell_at?(0, 0)).to eq true
  end
end
