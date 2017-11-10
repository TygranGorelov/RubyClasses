require './table'

class Robot

  attr_accessor :x, :y, :f

  def initialize (x, y, f)
    @x = x.to_i
    @y = y.to_i
    @f = f
  end

  def report
      p 'Position: x = ' + @x.to_s + ', y = ' + @y.to_s + ', direction - ' + @f
  end

  # moves
  def move_east
    @x += 1
  end

  def move_west
    @x -= 1
  end

  def move_north
    @y += 1
  end

  def move_south
    @y -= 1
  end

  # right
  def right_east
    @f = 'SOUTH'
  end

  def right_south
    @f = 'WEST'
  end

  def right_west
    @f = 'NORTH'
  end

  def right_north
    @f = 'EAST'
  end


  # left
  def left_east
    @f = 'NORTH'
  end

  def left_north
    @f = 'WEST'
  end

  def left_west
    @f = 'SOUTH'
  end

  def left_south
    @f = 'EAST'
  end

end


