class Player
  attr_accessor :gold_coins, :health_points, :lives, :score

  def initialize(gold_coins = 0, health_points = 10, lives = 5, score = 0)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
    @score = score
  end
end

  def do_battle
    @health_points -= 1
    if @health_points == 0
      #live -= 1
      @health_points += 10
    end
    if @live == 0
      restart
    end
  end

  def restart
    @health_points = 10
    @gold_coins = 0
    @lives = 5
    @score = 0
  end

  def level_up
    @lives += 1
  end

  def collect_treasure(x)
    @gold_coins += x
    if @gold_coins % 10 == 0
      @score += 1
      @gold_coins -= 10
    end
    if @score % 10 == 0
      level_up
    end
  end


  
