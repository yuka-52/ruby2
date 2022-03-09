class Jankengame
    
def initialize
 @result = ""
end
    
puts "じゃんけん"
def janken
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  player_hand = gets.to_i
  program_hand = rand(3)
  jankens = ["グー", "チョキ", "パー"]
  puts "ホイ！"
  puts "---------------"
  puts "あなた：#{jankens[player_hand]}を出しました"
  puts "相手  ：#{jankens[program_hand]}を出しました"

win = (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
draw = player_hand == program_hand
        
if draw
  puts "---------------"
  puts "あいこで"
  @result = "draw"
elsif win
  puts "勝ちました！"
  puts "---------------"
  @result = "win"
else
  puts "負けました！"
  puts "---------------"
  @result = "lose"
end
    
if @result == "draw"
  janken
elsif @result == "win"
  puts "あっち向いて〜"
  puts "0(上) 1(下) 2(右) 3(左)"
  player_finger = gets.to_i
  program_face = rand(4)
  hoi = ["上", "下", "右", "左"]
  puts "ホイ"
  puts "---------------"
  if player_finger == program_face
    puts "あなた：#{hoi[player_finger]}"
    puts "相手  ：#{hoi[program_face]}"
    puts "勝ちました！"
    puts "---------------"
  else
    puts "あなた：#{hoi[player_finger]}"
    puts "相手  ：#{hoi[program_face]}"
    puts "残念！"
    puts "---------------"
    janken
    end
elsif @result == "lose"
  puts "相手：あっち向いて〜"
  puts "あなた：0(上) 1(下) 2(右) 3(左)"
  player_face= gets.to_i
  program_finger = rand(4)
  hoi= ["上", "下", "右", "左"]
  puts "ホイ"
  puts "---------------"
  if player_face == program_finger
    puts "あなた：#{hoi[player_face]}"
    puts "相手  ：#{hoi[program_finger]}"
    puts "あなたの負けです"
    puts "---------------"
　　else
　　　　puts "あなた：#{hoi[player_face]}"
　　　　puts "相手  ：#{hoi[program_finger]}"
　　　　puts "▶︎勝敗つかず"
　　　　puts "---------------"
    　end
    end
    end
end

jankengame = Jankengame.new
jankengame.janken

end
