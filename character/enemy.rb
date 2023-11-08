class Enemy < Sprite
    def initialize
      self.x = 700
      self.y = 380
      self.image = Image.load("images/enemy.png")
    end

    def update
        self.x -= 8
        self.draw
    end

    def stop
      self.draw
    end
end