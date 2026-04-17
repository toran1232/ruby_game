require_relative  '../models/player'
def encount_log(enemy)
  puts "#{enemy.name}が現れた！！"
end
def command_log()
  puts "攻撃(1)、回復(2)、逃走(3)のどれかを入力してください"
end
def attack_log(target)
  puts "#{self.name}の攻撃"
  puts "#{target.name}に#{target.dmg}のダメージ"

end

def heal_log()
  puts "どこからともなく力が湧いてくる...!!"
  puts "#{@name}の体力 : #{@hp} / #{@max_hp}"
end

def error_log(enemy)
  puts "無効な入力です。"
end

def victory_log(target)
  puts "#{target.name}を倒した！"
  puts "勝利!!"
end
def defeat_log(target)
  puts "#{target.name}は力尽きた...."
  puts "敗北.."
end

def success_escape()
  puts "うまく逃げ切れた!!"
end

def miss_escape()
  puts "しかし回り込まれた!!"
end