# Class Rover contain the information of the rover position and its direction
# and the plateau where the rover
# Contains method for execute the instructions

class Rover
  attr_accessor :position
  attr_accessor :direction

  def initialize(location_str, plateau)
    x,y,d = location_str.split(' ')
    @position = Position.new(x, y, plateau)
    @direction = Direction.new(d)
  end

  def position_and_direction
    "#{position.x} #{position.y} #{direction.dir}"
  end


  def explore(instruction_sequence)
    instruction_sequence.split('').each{ |instruction| execute(instruction) }
  end

  def execute(instruction)
    case instruction
      when 'L'  then   @direction.turn_left
      when 'R'  then   @direction.turn_right
      when 'M'  then   move
    end
  end

  def move
    if  movement_impossible?
      puts "Invalid movement from (#{@position.x}, #{@position.y}) to #{@direction.dir}!"
    else
      @position.change_in @direction
    end
  end

  def movement_impossible?
    (@position.on_north_limit? && @direction.north?)  ||
    (@position.on_south_limit? && @direction.south?)  ||
    (@position.on_east_limit?  && @direction.east?)   ||
    (@position.on_south_limit? && @direction.south?)
  end
end
