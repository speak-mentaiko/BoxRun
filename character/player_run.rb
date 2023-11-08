class Player_run < Player_base
  def initialize
    super
  end

  def update
    super
    change_sprite
    if @jump == 0
      if Input.key_push?(K_SPACE) || Input.key_push?(K_UP) || Input.pad_push?(5)
        @jump = 1
      end
    elsif @jump == 1
      jump
    end
  end

  def change_sprite
    if @@distance % 7 == 0
      @@distance += 1
    end
    @@distance += 1
    if @@distance/4 % 2 == 0
      self.image = Image.load('images/box_0.png')
    else
      self.image = Image.load('images/box_1.png')
    end
  end
end