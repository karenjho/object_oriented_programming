# set Rover class
class Rover
  # Rover class has three attributes: x-coordinate, y-coordinate, direction
  attr_accessor :x_coordinate, :y_coordinate, :direction

# allows user to create a new rover and set coordinates right away
  def initialize(x_coordinate = 0, y_coordinate = 0, direction = "N")
    @x_coordinate = x_coordinate.to_i
    @y_coordinate = y_coordinate.to_i
    @direction = direction.to_s.upcase
  end

# move method instructs rover how to move when it encounters "M" instruction
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

# turn method instructs rover how to move when it encounters "L" or "R" instruction
  def turn(l_or_r)
    case @direction
      when "N"
        l_or_r == "R" ? @direction = "E" : @direction = "W"
      when "S"
        l_or_r == "R" ? @direction = "W" : @direction = "E"
      when "E"
        l_or_r == "R" ? @direction = "S" : @direction = "N"
      when "W"
        l_or_r == "R" ? @direction = "N" : @direction = "S"
    end
  end
end

def read_instructions
  # asks user for plateau size
  puts "Please provide a plateau size in this format: W L"
  puts "W = width of plateau. L = height of plateau."
  plateau_size = gets.chomp.split(" ")
  puts "Plateau size: #{plateau_size[0].to_s} #{plateau_size[1].to_s}"

  puts "* * * * * * *"

  # asks user for starting postiion of the first rover
  puts "Please provide a start position for the first rover in this format: X Y D"
  puts "X = starting x-coordinate. Y = starting y-coordinate. D = starting direction."
  r1_start = gets.chomp.split(" ")
  r1 = Rover.new(r1_start[0], r1_start[1], r1_start[2])
  puts "Rover start position: #{r1_start[0].to_s} #{r1_start[1].to_s} #{r1_start[2].to_s}"

  puts "* * * * * * *"

  # asks user for move and turn instructions for the first rover
  puts "Please provide a series of move and turn instructions for the first rover."
  puts "L = turn left. R = turn right. M = move 1 space. Do not include spaces."
  r1_instructions = gets.chomp.upcase.split("")
  # breaks down the string of move and turn instructions
  r1_instructions.each do |instruction|
    case instruction
      when "M"
        r1.move
      when "L"
        r1.turn("L")
      when "R"
        r1.turn("R")
    end
  end
  # checks to see if rover has fallen off the plateau
  if ( r1.x_coordinate > plateau_size[0].to_i ) || ( r1.x_coordinate < 0 ) || ( r1.y_coordinate > plateau_size[1].to_i ) || ( r1.y_coordinate < 0 )
    puts "First rover has fallen off the plateau and been destroyed."
    puts "What have you done??"
  else
  # gives ending position of the first rover
  puts "End position for the first rover: #{r1.x_coordinate} #{r1.y_coordinate} #{r1.direction}."
  end
  puts "* * * * * * *"

  # asks user for starting postiion of the first rover
  puts "Please provide a start position for the second rover in this format: X Y D"
  puts "X = starting x-coordinate. Y = starting y-coordinate. D = starting direction."
  r2_start = gets.chomp.split(" ")
  r2 = Rover.new(r2_start[0],r2_start[1],r2_start[2])
  puts "Rover start position: #{r2_start[0].to_s} #{r2_start[1].to_s} #{r2_start[2].to_s}"

  puts "* * * * * * *"

  # asks user for move and turn instructions for the second rover
  puts "Please provide a series of move and turn instructions for the second rover."
  puts "L = turn left. R = turn right. M = move 1 space. Do not include spaces."
  r2_instructions = gets.chomp.upcase.split("")
  # breaks down the string of move and turn instructions
  r2_instructions.each do |instruction|
    case instruction
      when "M"
        r2.move
      when "L"
        r2.turn("L")
      when "R"
        r2.turn("R")
    end
  end
  # checks to see if rovers have crashed into each other
  if r2.x_coordinate == r1.x_coordinate && r2.y_coordinate == r1.y_coordinate
    puts "Second rover has crashed into first rover and created a giant fireball."
    puts "What have you done??"
  else
    # checks to see if rover has fallen off the plateau
    if ( r2.x_coordinate > plateau_size[0] ) || ( r2.x_coordinate < 0 ) || ( r2.y_coordinate > plateau_size[1] ) || ( r2.y_coordinate < 0 )
      puts "Second rover has fallen off the plateau and been destroyed."
      puts "What have you done??"
    else
      # gives ending position of the second rover
      puts "End position for the second rover: #{r2.x_coordinate} #{r2.y_coordinate} #{r2.direction}."
    end
  end
end

read_instructions
