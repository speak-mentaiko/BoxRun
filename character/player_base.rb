class Player_base < Sprite
    def initialize
        @jump = 0
        @power = 0
        @v0 = 17
        @@x = 30
        @@y = 370
        @@distance = 0
    end

    def update
        self.x = @@x
        self.y = @@y
        self.draw
    end

    def jump
        @power += 1
        @@y = @@y - (@v0 - @power)
        if @@y >= 370
            @jump = 0
            @power = 0
            @@y = 370
        end
    end
end
