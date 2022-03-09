puts "じゃんけん、、、"

def initialize
  @result = ""
end

def janken_time
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  player_hand = gets.to_i
  program_hand = rand(3)
  jankens = ["グー","チョキ","パー"]
  puts "ホイ！"
  puts "------------"
  puts "あなた:#{jankens[player_hand]}を出しました"
  puts "相手:#{jankens[program_hand]}を出しました"
  puts "------------"

win =(player_hand == 0 && program_hand == 1) || (player_hand == 1 && player_hand ==  2) || (player_hand == 2 && program_hand == 0)
lose =!(win)


if player_hand == program_hand
  puts "あいこで"
  puts "ショ！"
  return true
elsif win
  puts "勝ちました！"
  @result = "win"
elsif
  puts "負けました！"
  @result = "lose"
end
end

next_game = true
while next_game
  next_game = janken_time
end

def hoi
if @result == "win"
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  player_finger == gets.to_i
  program_face == rand(4)
  hois =["上","下","右","左"]
  puts "ホイ！"
  puts "------------"
  puts "あなた:#{hois [player_finger]}"
  puts "相手:#{hois [program_face]}"
  puts "------------"

  if player_finger == program_face
    puts "あなたの勝ち！"
  elsif player_finger != program_face
    puts "もう一回じゃんけんし直し"
    return true
    end
end
end

if @result == 'lose'
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    
    player_face = gets.to_i
    program_finger = rand(4)

    hois =["上","下","右","左"]
    puts "ホイ！"
    puts "------------"
    puts "あなた:#{hois [player_finger]}"
    puts "相手:#{hois [program_face]}"
    puts "------------"

  if player_face == program_finger
    puts "あなたの負け"
  elsif player_face != program_finger
    puts "もう一回じゃんけんし直し"
    janken_time
    end
end

next_game = true
while next_game
    next_game = janken_time
end

janken_time
hoi
