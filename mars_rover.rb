# set Rover class
class Rover
  # Rover class has three attributes: x-coordinate, y-coordinate, direction
  attr_accessor :x_coordinate, :y_coordinate, :direction

  def initialize(x_coordinate = 0, y_coordinate = 0, direction = "N")
    @x_coordinate = x_coordinate.to_i
    @y_coordinate = y_coordinate.to_i
    @direction = direction.to_s
  end

  def move
    case @direction
      when "N"
        @y_coordinate += 1
      when "S"
        @y_coordinate -= 1
      when "E"
        @x_coordinate += 1
      when "W"
        @x_coordinate -= 1
    end
  end

  def turn(l_or_r)
    case @direction
      when "N"
        l_or_r = "R" ? @direction = "E" : @direction = "W"
      when "S"
        l_or_r = "R" ? @direction = "W" : @direction = "E"
      when "E"
        l_or_r = "R" ? @direction = "S" : @direction = "N"
      when "W"
        l_or_r = "R" ? @direction = "N" : @direction = "S"
    end
  end


end

def read_instructions
  puts "Please provide a plateau size in this format: W L"
  puts "W = width of plateau. L = height of plateau."
  plateau_size = gets.chomp.split(" ")

  puts "Please provide a start position for the first rover in this format: X Y D"
  puts "X = starting x-coordinate. Y = starting y-coordinate. D = starting direction."
  r1_start = gets.chomp.split(" ")
  r1 = Rover.new(r1_start[0],r1_start[1],r1_start[2])

  puts "Please provide a series of move and turn instructions for the first rover."
  puts "L = turn left. R = turn right. M = move 1 space. Do not include spaces."
  r1_instructions = get.chomp.split("")
  r1_instructions.each do |instruction|
    case instruction
      when "M"
        r1.move
      when "L"
        r1.turn
      when "R"
        r1.turn
    end
  puts "End position for the first rover: #{x_coordinate} #{y_coordinate} #{direction}."
  end

  puts "Please provide a start position for the second rover in this format: X Y D"
  puts "X = starting x-coordinate. Y = starting y-coordinate. D = starting direction."
  r2_start = gets.chomp.split(" ")
  r2 = Rover.new(r2_start[0],r2_start[1],r2_start[2])

  puts "Please provide a series of move and turn instructions for the second rover."
  puts "L = turn left. R = turn right. M = move 1 space. Do not include spaces."
  r2_instructions = get.chomp.split("")
end
