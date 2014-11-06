module Rover
  class Cart
    def initialize coordinate, direction, plateau
      @coordinate = coordinate
      @direction = direction
      @plateau = plateau
      @compass = build_compass

      # puts "Building Cart"
    end

    def build_compass

      compass = [:north, :east, :south, :west]

      if !compass.include?(@direction) # gaurd statement
        puts "Error <Cart>: Expected ':north, :east, :south, :west' but got #{@direction}"
        Exit
      end

      while compass.first != @direction
        compass.rotate!
        # puts "Building Compass #{@direction}"
      end

      compass
    end

    def rotate direction
      @compass.rotate!({"R" => 1, "L" => -1}[direction])
      @direction = @compass.first
    end

    def move
      move_here = {
        north: @coordinate.north,
        east: @coordinate.east,
        south: @coordinate.south,
        west: @coordinate.west
      }[@direction]

      @coordinate = move_here if @plateau.valid_coordinate?(move_here)

      @coordinate == move_here
    end

    def run_command cmd
      #  {'M' => move, 'R' => rotate_R, 'L' => rotate_L}[cmd]

      if cmd == 'M'
        move
      elsif cmd == 'L'
        rotate 'L'
      elsif cmd == 'R'
        rotate 'R'
      end
    end

    def coordinate
      @coordinate
    end

    def direction
      @direction
    end
  end
end
