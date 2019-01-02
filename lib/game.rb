class Game

  attr_reader :player_1, :player_2, :current_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    p "@current_turn before switch: #{current_turn}"
    @current_turn = switch
    p "@current_turn after switch: #{current_turn}"
  end

  # introduced for US#8. Not the best way...
  def opponent_of(the_player)
    the_player == player_1 ? player_2 : player_1
  end

  private

  def switch
    # if @current_turn value is equal to player 1 then set it
    # to equal player 2 else set to player 1.
    current_turn == player_1 ? player_2 : player_1
  end

end
