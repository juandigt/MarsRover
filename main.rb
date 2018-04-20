#runs the Mars Rover mission and outputs the final location and direction of the rovers

require_relative  'lib/direction'
require_relative  'lib/plateau'
require_relative  'lib/position'
require_relative  'lib/rover'

input = File.open("lib/input.txt")
output = File.open("lib/output.txt", "w")

plateau_dimenions = input.readline
# Initialize plateau object
plateau = Plateau.new(plateau_dimenions)

i = 0
while !input.eof?
  i += 1
  puts "Rover #{i} - Final co-ordinates and heading."
  initial_position = input.readline
  instructions = input.readline
  # Initialize the rover with the initial poistion on the plateau
  rover = Rover.new(initial_position, plateau)
  # Ask it to explore according to the instructions
  rover.explore(instructions)

  output.write "#{rover.position_and_direction}\n"
  puts "#{rover.position_and_direction}"
  puts "--------------------------------------------"

end
