class Tennis

  def initialize
    @player1_score = 0
    @player2_score = 0
  end

  def point_scored(player_number)
    if player_number == 1
      @player1_score = increase_score(@player1_score)
    elsif player_number == 2
      @player2_score = increase_score(@player2_score)
    end
  end
  
  def increase_score(current_score)
    case current_score
    when 0
      15
    when 15
      30
    when 30
      40
    when 40
      "wins"
    end
  end

  def score 
    if @player1_score == 'wins'
      return 'Player 1 wins!'
    end

    if @player2_score == 'wins'
      return 'Player 2 wins!'
    end

    if @player1_score == 40 && @player2_score == 40
      @player1_score = 'Duece'
      @player2_score = 'Duece'
      return 'Duece'
    end

    "#{@player1_score}-#{@player2_score}"
  end
end
