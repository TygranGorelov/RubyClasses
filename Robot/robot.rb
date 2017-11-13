require './table'

class Robot

  attr_accessor :x, :y, :f

  def initialize(x, y, f, table)
    @x = x
    @y = y
    @f = f
    @table = table
  end

  def valid_coordionates?
    @x.to_s.match(/^\d+$/)&.to_s && @y.to_s.match(/^\d+$/)&.to_s && @x < @table.a && @y < @table.b
  end

  def valid_directions?
    %w(EAST WEST NORTH SOUTH).include?(@f)
  end

  def can_place?
    valid_coordionates? && valid_directions?
  end

  def report
      p 'Position: x = ' + @x.to_s + ', y = ' + @y.to_s + ', direction - ' + @f
  end

  def next_position
    case
    when @f == 'EAST'
      @x + 1
    when @f == 'SOUTH'
      @y - 1
    when @f == 'WEST'
      @x - 1
    when @f == 'NORTH'
      @y + 1
    end
  end

  def move
    case
      when @f == 'EAST' && next_position < @table.a
        @x += 1
      when @f == 'SOUTH' && next_position >= 0
        @y -= 1
      when @f == 'WEST' && next_position >= 0
        @x -= 1
      when @f == 'NORTH' && next_position < @table.b
        @y += 1
      else
        p '---WARNING--- Robot can fall!!!'
    end
  end

  def right
    case
    when @f == 'EAST'
      @f = 'SOUTH'
    when @f == 'SOUTH'
      @f = 'WEST'
    when @f == 'WEST'
      @f = 'NORTH'
    when @f == 'NORTH'
      @f = 'EAST'
    end
  end

  def left
    case
    when @f == 'EAST'
      @f = 'NORTH'
    when @f == 'NORTH'
      @f = 'WEST'
    when @f == 'WEST'
      @f = 'SOUTH'
    when @f == 'SOUTH'
      @f = 'EAST'
    end
  end

end


