# Class direction define the direction of the rover
# Has methods for change the direction afre turn left or right

class Direction
  attr_reader :dir

  def initialize(d)
    @dir = d
  end

  def north?;   dir == 'N';  end
  def south?;   dir == 'S';  end
  def east?;    dir == 'E';  end
  def west?;    dir == 'W';  end

  def turn_left
    case @dir
      when 'N'  then   @dir = 'W'
      when 'E'  then   @dir = 'N'
      when 'S'  then   @dir = 'E'
      when 'W'  then   @dir = 'S'
    end
  end

  def turn_right
    case @dir
      when 'N'  then   @dir = 'E'
      when 'E'  then   @dir = 'S'
      when 'S'  then   @dir = 'W'
      when 'W'  then   @dir = 'N'
    end
  end
end
