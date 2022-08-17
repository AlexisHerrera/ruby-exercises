# frozen_string_literal: true

# TODO: hacer la superclass Cell
class EmptyCell
  def mark_as_cross_cell
    CrossCell.new
  end

  def mark_as_circle_cell
    CircleCell.new
  end

  def empty?
    true
  end

  def is_cross_cell?
    false
  end
end

class CrossCell
  def ==(other)
    self.class == other.class
  end

  def is_cross_cell?
    true
  end

  def empty?
    false
  end
end

class CircleCell
  def ==(other)
    self.class == other.class
  end
end
