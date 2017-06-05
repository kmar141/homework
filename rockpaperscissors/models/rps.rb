class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  # def draw_check
  #   if @player1 = @player2
  #     return "Draw"

  def play_game

    if @player1 == @player2
      return "draw"
    end

    if @player1 == 'rock' && @player2 == 'paper'
        return "Paper wins"
    elsif @player1 == 'rock' && @player2 == 'scissors'
        return "Rock wins"
    elsif @player1 == 'paper' && @player2 =='scissors'
        return "Scissors wins"
    elsif @player1 == 'paper' && @player2 == 'rock'
        return "Paper wins"
    elsif @player1 == 'scissors' && @player2 == 'rock'
        return "Rock wins"
    elsif @player1 == 'scissors' && @player2 == 'paper'
        return "Scissors wins"
    end
  end
end

