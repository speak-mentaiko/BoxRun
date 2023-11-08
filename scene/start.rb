class Start
    def initialize
        @stage = Image.load("images/stage.png")
        @player = Player_start.new
        @finish = false
        @start = false
    end

    def update
      Window.draw(0,-22, @stage)
      @player.update
      @start = true if Input.key_push?(K_SPACE) || Input.key_push?(K_UP) || Input.pad_push?(5)
      if @start
        @player.jump
        @player.update
        @finish = true if @player.y == 370
      end
    end

    def finish?
        @finish
    end
end