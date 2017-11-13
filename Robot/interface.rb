require './table'
require './robot'

class Interface

  def create_table
    puts 'Let\'s create table first. Insert table size:'
    puts 'side a: '
    a = gets.strip.to_i
    puts 'side b: '
    b = gets.strip.to_i

    @table = Table.new(a, b)

    if @table.valid_size?(a, b)
      p 'Table CREATED. Size ' + a.to_s + 'x' + b.to_s
    else
      p 'Only positive integers!'
      create_table
    end
  end

  def place
    puts 'Let\'s place the Robot'
    command = gets.strip
    if command == 'PLACE'
      p 'Input X coord: '
      x = gets.strip.to_i
      p 'Input Y coord: '
      y = gets.strip.to_i
      p 'Direction (EAST, WEST, NORTH, SOUTH): '
      f = gets.strip
      @robot = Robot.new(x, y, f, @table)

      if @robot.can_place?
        p 'Robot PLACED! Position: ' + x.to_s + ':' + y.to_s + ', direction ' + f
      else
        p 'Only positive integers, no more then table size! & directions only EAST, WEST, NORTH or SOUTH'
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
    case
      when command == 'REPORT'
        @robot.report
      when command == 'HELP'
        p 'You can use next commands: '
        p 'MOVE - to move you Robot on the table'
        p 'LEFT - to turn Robot left'
        p 'RIGHT - to turn Robot right'
        p 'REPORT - to know Robot\'s position and direction'
      when command == 'MOVE'
        @robot.move
        p 'Robot moved to ' + @robot.f
      when command == 'RIGHT'
        @robot.right
        p 'Robot turned RIGHT to ' + @robot.f
      when command == 'LEFT'
        @robot.left
        p 'Robot turned LEFT to ' + @robot.f
    end
    return steps
  end



end