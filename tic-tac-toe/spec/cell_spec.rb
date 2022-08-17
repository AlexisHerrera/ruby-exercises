# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/cell'

describe 'Empty cell' do
  it 'should be able to change its state to CrossCell' do
    empty_cell = EmptyCell.new
    expect(empty_cell.mark_as_cross_cell).to eq(CrossCell.new)
  end

  it 'should be able to change its state to CircleCell' do
    empty_cell = EmptyCell.new
    expect(empty_cell.mark_as_circle_cell).to eq(CircleCell.new)
  end

  it 'should return true when is_empty is called' do
    expect(EmptyCell.new.empty?).to eq true
  end
end

describe 'Cross cell' do
  it 'should return true when is_cross_cell is called' do
    expect(CrossCell.new.cross_cell?).to eq true
  end
  it 'should return false when is_empty is called' do
    expect(CrossCell.new.empty?).to eq false
  end
end
