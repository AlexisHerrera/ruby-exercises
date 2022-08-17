# frozen_string_literal: true

class Cell
  def empty?
    false
  end

  def cross_cell?
    false
  end

  def circle_cell?
    false
  end
end

class EmptyCell < Cell
  def mark_as_cross_cell
    CrossCell.new
  end

  def mark_as_circle_cell
    CircleCell.new
  end

  def empty?
    true
  end
end

class CrossCell < Cell
  def ==(other)
    self.class == other.class
  end

  def cross_cell?
    true
  end
end

class CircleCell < Cell
  def ==(other)
    self.class == other.class
  end

  def circle_cell?
    true
  end
end
