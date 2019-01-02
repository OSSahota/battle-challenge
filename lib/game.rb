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
    p "@current_turn before switch: #{@current_turn}"
    @current_turn =  opponent_of(current_turn)
    p "@current_turn after switch: #{@current_turn}"
  end

  private

  def opponent_of(current_player)
    @current_turn == @player_1 ? @player_2 : @player_1
  end

end
