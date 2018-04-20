# Class position difine the new x and y atributes when there is a movement
# Has a methods for check if the rover is on the plateau limits

class Position
  attr_reader :x, :y

  def initialize(x, y, plateau)
    @x = x.to_i
    @y =  y.to_i
    @plateau = plateau
  end

  def change_in(direction)
    @y += 1    if direction.north?
    @y -= 1    if direction.south?
    @x += 1    if direction.east?
    @x -= 1    if direction.west?
  end

  def on_north_limit?; @y == @plateau.north_limit; end
  def on_south_limit?; @y == @plateau.south_limit; end
  def on_east_limit?;  @x == @plateau.east_limit;  end
  def on_west_limit?;  @x == @plateau.west_limit;  end
end
