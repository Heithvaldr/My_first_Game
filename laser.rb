class Laser
  attr_reader :x, :y
    def initialize(player, window)
        @player = player
        @window = window
        @shooting = false
        @x = @player.x
        @y = @player.y
        @icon = Gosu::Image.new(@window, "images/laser.png", true)
    end
    
    def shoot
        @shooting = true
    end
    
    def update
        if @shooting
            @y = @y - 10
            if @y < 0
                @shooting = false
            end
        else
            @x = @player.x
            @y = @player.y
        end
    end
    
    def draw
        if @shooting
            @icon.draw(@x, @y, 4)
        else
            @icon.draw(@player.x,@player.y,4)
        end
    end
    
end