require_relative '../controller/command'

class Enemy < Player
  def attack(target)
    if self.name == "スライム"
      if self.atk <= target.dfe 
        target.dmg += 1
        attack_log(target)
      else
        target.dmg =  self.atk - target.dfe  
        attack_log(target)
        target.hp = target.hp - target.dmg
      end
      if target.hp <= 0
        defeat_log(target)
        exit
      end
    end
  end
end