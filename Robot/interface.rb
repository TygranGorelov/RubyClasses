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
      if x.match(/^\d+$/)&.to_s&.to_i && x.to_i <= @table.a-1
        p 'Input Y coord: '
        y = gets.strip
        if y.match(/^\d+$/)&.to_s&.to_i && y.to_i <= @table.b-1
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
          p 'Only positive integers, no more then table size!'
          return place
        end
      else
        p 'Only positive integers, no more then table size!!'
        return place
      end
    else
      p 'First PLACE Robot!'
      return place
    end

  end

  def steps
    puts 'Let\'s MOVE, turn RIGHT, LEFT the Robot or get a REPORT about his position. HELP for help'
    command = gets.strip

    if command == 'REPORT'
      @robot.report
    end

    if command == 'MOVE'
      if @robot.f == 'EAST' && @table.a >= 2 && @robot.x <= @table.a -= 2
        @robot.move_east
        p 'Robot moved to EAST'
      elsif @robot.f == 'SOUTH' && @robot.y >= @table.b -= (@table.b - 2)
        @robot.move_south
        p 'Robot moved to SOUTH'
      elsif @robot.f == 'WEST' && @robot.x >= @table.a -= (@table.a -= 2)
        @robot.move_west
        p 'Robot moved to WEST'
      elsif @robot.f == 'NORTH' && @table.b >= 2 && @robot.y <= @table.b -= 2
        @robot.move_north
        p 'Robot moved to NORTH'
      else
        p 'WARNING Robot can fall!!!'
      end
    end

    if command == 'RIGHT'
      case
      when @robot.f == 'EAST'
        @robot.right_east
        p 'Robot turned RIGHT to SOUTH'
      when @robot.f == 'SOUTH'
        @robot.right_south
        p 'Robot turned RIGHT to WEST'
      when @robot.f == 'WEST'
        @robot.right_west
        p 'Robot turned RIGHT to NORTH'
      else
        @robot.right_north
        p 'Robot turned RIGHT to EAST'
      end
    end

    if command == 'LEFT'
      case
      when @robot.f == 'EAST'
        @robot.left_east
        p 'Robot turned LEFT to NORTH'
      when @robot.f == 'NORTH'
        @robot.left_north
        p 'Robot turned LEFT to WEST'
      when @robot.f == 'WEST'
        @robot.left_west
        p 'Robot turned LEFT to SOUTH'
      else
        @robot.left_south
        p 'Robot turned LEFT to EAST'
      end
    end

    if command == 'HELP'
      p 'You can use next commands: '
      p 'MOVE - to move you Robot on the table'
      p 'LEFT - to turn Robot left'
      p 'RIGHT - to turn Robot right'
      p 'REPORT - to know Robot\'s position and direction'
    end

    return steps
  end



end