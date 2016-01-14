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
    puts "Please provide a plateau size."
    puts "Format: W L. W = width of plateau. L = height of plateau."
    plateau_size = gets.chomp.split(" ")
  end
end
