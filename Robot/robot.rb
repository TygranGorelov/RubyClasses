require './table'

class Robot

  attr_accessor :x, :y, :f, :a, :b

  def initialize (x, y, f, a, b)
    @x = x
    @y = y
    @f = f
    @a = a
    @b = b
  end


  def report
      p 'Position: x = ' + @x.to_s + ', y = ' + @y.to_s + ', direction - ' + @f
  end

  def move
    @x = @x.to_i
    @y = @y.to_i
    if @f == 'EAST' && @x < @b-1
      @x += 1
      p 'Robot moved to EAST'

    elsif @f == 'SOUTH'
      @y -= 1
      p 'Robot moved to SOUTH'
    elsif @f == 'WEST'
      @x -= 1
      p 'Robot moved to WEST'
    elsif       #@f == 'NORTH'
      @y += 1
      p 'Robot moved to NORTH'
    else
      p 'STOP!'
    end
  end

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


