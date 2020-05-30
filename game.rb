class Game
  def ready
      puts "準備ができたらEnterをおしてください。"
      # 入力されるまで待機する
      input = $stdin.gets
      # 1秒毎に配列各要素を出力
      shouts = ["あっち", "向いて...", "ホイっ！"]
      shouts.each do |shout|
          puts shout
          sleep 1.0
      end
  end

  def compete
    key_items = { h: "⇦", j: "⇩", k: "⇧", l: "⇨" }
    puts key_items
    puts "入力してください： "
    user_select = gets.chomp.to_sym
    puts "-------------------------"
    puts "あなた： #{key_items[user_select]}"
    ai_select = key_items.keys.sample
    puts "AI： #{key_items[ai_select]}"
    puts "-------------------------"
    sleep 0.5
    if user_select == ai_select
      sleep 0.8 #タメを作る
      puts "You win!"
      sleep 0.8
      puts "100円ゲット！"
      puts "-------------------------"
    else
      sleep 0.8
      puts "You lose!!"
      sleep 0.8
      puts "200円徴収します！"
      puts "-------------------------"
      sleep 0.8
    end
  end 

  def continue
    answer = { y: "はい", n: "いいえ" }
    puts answer
    print "続けますか？"
    response = gets.chomp.to_sym
    puts answer[response]
    puts "-------------------------"
    return answer[response] #値をreturnする
  end
end
