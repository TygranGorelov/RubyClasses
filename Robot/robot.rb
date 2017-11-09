class Robot

  attr_accessor :x, :y, :f

  def initialize (x, y, f)
    @x = x
    @y = y
    @f = f
  end

  def report
      p 'Position: x = ' + @x.to_s + ', y = ' + @y.to_s + ', direction - ' + @f
  end

  def move
    @x = @x.to_i
    @y = @y.to_i
    if @f == 'EAST'
      @x += 1
      p 'Robot moved to EAST'
    else
      p 'CHOOSE OTHER SIDE'
    end

  end




end


