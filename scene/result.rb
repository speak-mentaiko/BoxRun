class Result
    def initialize
        @finish = false

        @player = Player_stop.new
        @enemy = Enemy.new
        @back = Back.new
        @gameover = Image.load('images/restart.png')
    end

    def update
      @back.stop
      @player.update
      @enemy.stop

      Window.draw_font(230, 200, "PUSH  SPACE", Font.new(24),:color => C_BLACK)
      Window.draw(260,240,@gameover)
      Window.draw_font(460, 0, "#{$distance_high}", Font.new(24),:color => C_BLACK)
      Window.draw_font(430, 0, "HI:", Font.new(24),:color => C_BLACK)

      if Input.key_push?(K_SPACE) || Input.key_push?(K_UP) || Input.pad_push?(5)
        @finish = true
      elsif Input.key_push?(K_ESCAPE)
        Window.close
      end
    end

    def finish?
        @finish
    end
end