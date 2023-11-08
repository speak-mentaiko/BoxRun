class Back < Sprite
  $distance_high = 0

    def initialize
        @interval_back = 0
        @back_num = 0
        @interval_back = 700
        @count_back = 0
        @back_x = [620,620]
        @stage = Image.load("images/stage.png")
        self.image = Image.load("images/back.png")
        @distance = 0
    end

  def update
    #stage
    Window.draw(0,-22, @stage)
    #result
    Window.draw_font(550, 0, "#{@distance}", Font.new(24),:color => C_BLACK)
    if @distance >= $distance_high
      $distance_high = @distance
    end
    Window.draw_font(460, 0, "#{$distance_high}", Font.new(24),:color => C_BLACK)
    Window.draw_font(430, 0, "HI:", Font.new(24),:color => C_BLACK)
    #back
    if @interval_back == 700
      @back_num += 1 if @back_num != 2
      @interval_back = 0
    end
    if @back_num != 0
      while @back_num > @count_back
        @back_x[@count_back] -= 0.5
        self.x = @back_x[@count_back]
        self.draw
        if @back_x[@count_back] > -40
          if @count_back == 1
            self.y = 60
          else
            self.y = 30
          end
        else
          @back_x[@count_back] = 620
        end
        @count_back += 1
      end
      @count_back = 0
    end
    @interval_back += 1
    @distance += 1
  end

  def stop
    Window.draw(0,-22, @stage)
    Window.draw_font(550, 0, "#{@distance}", Font.new(24),:color => C_BLACK)
    Window.draw_font(460, 0, "#{$distance_high}", Font.new(24),:color => C_BLACK)
    Window.draw_font(430, 0, "HI:", Font.new(24),:color => C_BLACK)

    while @back_num > @count_back
      if @back_x[@count_back] > -20
        if @count_back == 1
          self.y = 60
        else
          self.y = 30
        end
      else
        @back_x[@count_back] = 620
      end
      self.draw
      @count_back += 1
    end
    @count_back = 0
  end
end