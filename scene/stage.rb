class Stage
    attr_reader :score
    def initialize
        @finish = false
        @player = Player_run.new
        @enemy = Enemy.new
        @back = Back.new

        @enemies = []
        
        @interval_enemy = 0
        @random_enemy = 0
    end

    def update
        @back.update
        @player.update

        if @interval_enemy == 0
            @random_enemy = rand(40..90)
        end
        if @enemies.count <= 3 && @interval_enemy == @random_enemy
            @enemies << Enemy.new
            @interval_enemy = 0
        end
        @interval_enemy += 1

        @enemies.count.times do |n| 
         if @enemies[n] != nil
                
            @enemies[n].update
            if @enemies[n] === @player
                @finish = true
            end
            if @enemies[n].x < -10
                @enemies.delete_at(n)
            end
          end
        end
    end

    def finish?
        @finish
    end
end