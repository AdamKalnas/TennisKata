class Tennis

  def initialize
    @player1_score = 0
    @player2_score = 0
  end

  def point_scored(player_number)
    if player_number == 1
      @player1_score = 15
    elsif player_number == 2
      @player2_score = 15
    end
  end
  
  def score 
    "#{@player1_score}-#{@player2_score}"
  end
end
