# set Rover class
class Rover
  # Rover class has three attributes: x-coordinate, y-coordinate, direction
  attr_accessor :x_coordinate, :y_coordinate, :direction

  def initialize(x_coordinate = 0, y_coordinate = 0, direction = "N")
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instruction
    puts "Please provide a plateau size in this format: W L"
    puts "W = width of plateau. L = height of plateau."
    plateau_size = gets.chomp.split(" ")

    puts "Please provide a starting position for the rover in this format: X Y D"
    puts "X = starting x-coordinate. Y = starting y-coordinate. D = starting direction."
    starting_position = gets.chomp.split(" ")

    puts "Please provide a series of move and turn instructions."
    puts "L = turn left. R = turn right. M = move 1 space. Do not include spaces."
    move_turn_instructions = get.chomp.split("")
  end
end
