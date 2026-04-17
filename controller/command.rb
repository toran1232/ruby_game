require_relative  '../view/log'
require_relative  '../models/player'
require_relative  '../models/enemy'
module Command
  def encount(player, enemy)
      
    command_log()
    command = gets.to_i
    if command == 1
      player.attack(enemy)
      enemy.attack(player)
      elsif command == 2
        player.heal()
        enemy.attack(player)
      elsif  command == 3
        player.escape() 
        enemy.attack(player)
      else
        error_log(enemy)
        encount(player, enemy)
    end
  end
end