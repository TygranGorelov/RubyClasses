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

  # def right_east
  #
  # end




  def right
    case
    when @f == 'EAST'
      @f = 'SOUTH'
      p 'Robot turned RIGHT to SOUTH'
    when @f == 'SOUTH'
      @f = 'WEST'
      p 'Robot turned RIGHT to WEST'
    when @f == 'WEST'
      @f = 'NORTH'
      p 'Robot turned RIGHT to NORTH'
    else
      @f = 'EAST'
      p 'Robot turned RIGHT to EAST'
    end
  end






  def left
    case
    when @f == 'EAST'
      @f = 'NORTH'
      p 'Robot turned LEFT to NORTH'
    when @f == 'NORTH'
      @f = 'WEST'
      p 'Robot turned LEFT to WEST'
    when @f == 'WEST'
      @f = 'SOUTH'
      p 'Robot turned LEFT to SOUTH'
    else
      @f = 'EAST'
      p 'Robot turned LEFT to EAST'
    end
  end

end


