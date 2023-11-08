class Player_stop < Player_base
  def initialize
    self.x = @@x
    self.y = @@y
  end

  def update
    self.x = @@x
    self.y = @@y
    if @@distance/4 % 2 == 0
      self.image = Image.load('images/box_0_hit.png')
    else
      self.image = Image.load('images/box_1_hit.png')
    end
    self.draw
  end
end