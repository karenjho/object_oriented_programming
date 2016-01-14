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

    puts "Please provide a starting position for the first rover in this format: X Y D"
    puts "X = starting x-coordinate. Y = starting y-coordinate. D = starting direction."
    r1_starting_position = gets.chomp.split(" ")

    puts "Please provide a series of move and turn instructions for the first rover."
    puts "L = turn left. R = turn right. M = move 1 space. Do not include spaces."
    r1_move_turn_instructions = get.chomp.split("")

    puts "Please provide a starting position for the second rover in this format: X Y D"
    puts "X = starting x-coordinate. Y = starting y-coordinate. D = starting direction."
    r2_starting_position = gets.chomp.split(" ")

    puts "Please provide a series of move and turn instructions for the second rover."
    puts "L = turn left. R = turn right. M = move 1 space. Do not include spaces."
    r2_move_turn_instructions = get.chomp.split("")
  end

  def move
    case direction
      when "N"
        @y_coordinate + 1
      when "S"
        @y_coordinate - 1
      when "E"
        @x_coordinate + 1
      when "W"
        @x_coordinate - 1
    end
  end

  def turn
    case right
      when "N"
        @direction = "E"
      when "S"
        @direction = "W"
      when "E"
        @direction = "S"
      when "W"
        @direction = "N"
    end
  end
  
end
