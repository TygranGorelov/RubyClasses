require './table'
require './robot'

class Interface

  attr_accessor :robot
  attr_accessor :table

  def create_table
    puts 'Let\'s create table first. Insert table size:'
    puts 'side a: '
    a = gets.strip
    if a.match(/^\d+$/)&.to_s&.to_i&.positive?
      puts 'side b: '
      b = gets.strip
      if b.match(/^\d+$/)&.to_s&.to_i&.positive?
        p 'Table size ' + a + 'x' + b
        @table = Table.new(a, b)
      else
        p 'Only positive integers!'
        return create_table
      end
    else
      p 'Only positive integers!'
      return create_table
    end
  end

  def place
    puts 'Let\'s place the Robot'
    command = gets.strip
    if command == 'PLACE'
      p 'Input X coord: '
      x = gets.strip
      if x.match(/^\d+$/)&.to_s&.to_i
        p 'Input Y coord: '
        y = gets.strip
        if y.match(/^\d+$/)&.to_s&.to_i
          p 'Direction (EAST, WEST, NORTH, SOUTH): '
          f = gets.strip
          if f == 'EAST' || f == 'WEST' || f == 'NORTH' || f == 'SOUTH'
            p 'Position: ' + x + ':' + y + ', direction ' + f
            @robot = Robot.new(x, y, f)
          else
            p 'Only EAST, WEST, NORTH or SOUTH !'
            return place
          end
        else
          p 'Only positive integers!'
          return place
        end
      else
        p 'Only positive integers!'
        return place
      end
    else
      p 'First PLACE Robot!'
      return place
    end

  end

  def steps
    puts 'Let\'s MOVE the Robot or get a REPORT about his position'
    command = gets.strip
    if command == 'REPORT'
      @robot.report
    end
    if command == 'MOVE'
      @robot.move
    end
    if command == 'RIGHT'
      @robot.right
    end
    if command == 'LEFT'
      @robot.left
    end
    if command == 'TABLE'
      @table.table
    end
    return steps
  end



end