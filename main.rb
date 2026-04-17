require_relative  './models/player'
require_relative  './models/enemy'
require_relative './controller/command'
require_relative './view/log'
player = Player.new("勇者", 4, 3,6,0)
enemy = Enemy.new("スライム", 5, 2, 7,0)
include Command

while true
  encount_log(enemy)
  encount(player, enemy)
end
