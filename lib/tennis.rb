require "kata/version"

module Kata
  class Tennis

    def initialize(player1Name, player2Name)
      @player1Name = player1Name
      @player2Name = player2Name
      @p1points = 0
      @p2points = 0
    end

    def won_point(playerName)
      if playerName == @player1Name
        @p1points += 1
      else
        @p2points += 1
      end
    end

    def score
      if (@p1points==@p2points)
        handle_tie
      elsif (@p1points>=4 or @p2points>=4)
        check_for_win
      else
        "#{string_from_score(@p1points)}-#{string_from_score(@p2points)}"
      end
    end

    def handle_tie
      {
          0 => "Love-All",
          1 => "Fifteen-All",
          2 => "Thirty-All",
      }.fetch(@p1points, "Deuce")
    end

    def check_for_win
      minusResult = @p1points-@p2points
      if (minusResult==1)
        "Advantage " + @player1Name
      elsif (minusResult ==-1)
        "Advantage " + @player2Name
      elsif (minusResult>=2)
        "Win for " + @player1Name
      else
        "Win for " + @player2Name
      end
    end

    def string_from_score(score)
      {
          0 => "Love",
          1 => "Fifteen",
          2 => "Thirty",
          3 => "Forty",
      }[score]
    end
  end
end
