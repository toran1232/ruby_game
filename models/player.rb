
require_relative  '../view/log'
class Player
  attr_accessor :name,:atk,:dfe,:hp,:dmg
  def initialize(name,atk,dfe,hp,dmg)
    @name = name
    @atk  = atk
    @dfe  = dfe
    @max_hp  = hp
    @hp   = hp
    @dmg  = dmg
  end
  def attack(target)
    require_relative '../controller/command'
    if self.name == "勇者"
      if self.atk <= target.dfe 
        target.dmg += 1 
        attack_log(target)
      else
        target.dmg =  self.atk - target.dfe  
        attack_log(target)
        target.hp = target.hp - target.dmg
      end
    end
      if target.hp <= 0
        victory_log(target)
        exit
      end
  end
  def heal()
      self.hp += 3
      if self.hp > @max_hp
        self.hp = @max_hp
      end
      heal_log()
  end
  def escape() 
    array = [1,0]
      escape = array.sample
      if escape == 1
        success_escape()
        exit
      else
        miss_escape()
      end
  end
  
end
