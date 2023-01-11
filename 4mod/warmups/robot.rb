class Robot 
  NORTH = 0
  EAST = 1
  SOUTH = 2
  WEST = 3

  def return_to_origin?(commands)
    x = 0
    y = 0
    direction = NORTH

    commands.each_char do |c|
      if c == "G"
        # Update the robot's position based on its direction
        if direction == NORTH
          y += 1
        elsif direction == EAST
          x += 1
        elsif direction == SOUTH
          y -= 1
        elsif direction == WEST
          x -= 1
        end
      elsif c == "L"
        # Update the robot's direction by turning left
        direction = (direction - 1) % 4
      elsif c == "R"
        # Update the robot's direction by turning right
        direction = (direction + 1) % 4
      end
    end
    x == 0 && y == 0
  end
end