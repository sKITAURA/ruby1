line = gets.chomp.split(",")
line.each do |enemy|
	puts "#{enemy}が、現れた！"
end

# おみくじプログラム

# 今回は自力で全部書いてみよう！
line = gets.chomp.split(",")
num = line.length
num1 = rand(num)
p line
puts line[num1]

# ハッシュのおさらい
enemies = {"ザコ" => "スライム", "中ボス" => "ドラゴン", "ラスボス" => "魔王"}
p enemies 
enemies["ザコ１"] = "レッドドラゴン" #追加
enemies.delete("ザコ")

skills = {"職業" => "戦士", "体力" => 100, "魔法力" => 200, "ゴールド" => 380}
# この下で、ハッシュの値をループで出力してみよう
skills.each_value do |data|
    puts "#{data}"
end

points = {"国語" => 70, "算数" => 35, "英語" => 52}
sum = 0
# この下で、ハッシュの値の合計をループで計算してみよう
points.each_value do |data|#二つ取り出すときはvalueがない
    sum += data
end
puts sum

apples = [310, 322, 292, 288, 300, 346]
# ここに、要素をソートして表示するコードを記述する
p apples.sort#オプションで.reverseで逆順

# ハッシュをソートしてハッシュで出力する

math = {"えんどう" => 99, "あだち" => 40, "いいだ" => 12}
# この下で、ハッシュをキーでソートして、ハッシュとして出力しよう
p math.sort.to_h

# ハッシュを値で昇順にソートする
math = {"あだち" => 40, "いいだ" => 12, "えんどう" => 99}
# この下で、ハッシュを値でソートして出力しよう
p math.sort_by{|k, v| v}

# RPGのアイテム一覧を再現２

# 画像用ハッシュ
items_img = {
    "剣" => "http://paiza.jp/learning/images/sword.png",
    "盾" => "http://paiza.jp/learning/images/shield.png",
    "回復薬" => "http://paiza.jp/learning/images/potion.png",
    "クリスタル" => "http://paiza.jp/learning/images/crystal.png"
}

# アイテムの並び順配列
items_order = ["クリスタル", "盾", "剣", "回復薬", "回復薬", "回復薬"]

items_order.each do |item_name|
    puts "<img src = '#{items_img[item_name]}'>"
    puts "#{item_name}</br>"
end

# 画像用ハッシュ
items_img = {
    "剣" => "http://paiza.jp/learning/images/sword.png",
    "盾" => "http://paiza.jp/learning/images/shield.png",
    "回復薬" => "http://paiza.jp/learning/images/potion.png",
    "クリスタル" => "http://paiza.jp/learning/images/crystal.png"
}

# アイテムの並び順配列
items_order = ["剣", "盾", "回復薬", "クリスタル"]

# ここから下を記述しよう
items_order.each do |item_name|
    puts "<img src = '#{items_img[item_name]}'><br>"
end


# 画像用ハッシュ
items_img = {
    "剣" => "http://paiza.jp/learning/images/sword.png",
    "盾" => "http://paiza.jp/learning/images/shield.png",
    "回復薬" => "http://paiza.jp/learning/images/potion.png",
    "クリスタル" => "http://paiza.jp/learning/images/crystal.png"
}
# ここから下を記述しよう
count = gets.to_i
for i in 1..count
    items = gets.chomp
    puts "<img src = '#{items_img[items]}'>"
end


# 2次元配列に要素を追加する
basket = [["木の棒", "こん棒", "エクスカリバー"], ["おにぎり", "おにぎり", "むぎ茶"], ["毒消し", "薬草", "アイアンシールド"]]

# ここに、要素を追加するコードを記述する
basket[0].push("石斧")

p basket

# 2次元配列に要素を削除する
basket = [["木の棒", "こん棒", "エクスカリバー"], ["おにぎり", "おにぎり", "むぎ茶"], ["毒消し", "薬草", "アイアンシールド"]]
# ここに、要素を削除するコードを記述する
basket[2].delete_at(2)
p basket


#配列の中身をループで表示する
enemies = ["スライム", "モンスター", "ゾンビ", "ドラゴン", "魔王"]
# ここに、要素をループで表示するコードを記述する
enemies.each_with_index do |enemy, i|
    puts "#{i+1}番目の#{enemy}が現れた！"
end


# 各要素を3倍にして新しい配列を作成する
numbers = [12, 34, 56, 78, 90]
# ここに、各要素を3倍にして新しい配列を作成するコードを記述する
numbers2 = numbers.map do |a1|
    a1 * 3
end
p numbers2

# Array.newで配列を作成してみよう
a1 = Array.new(5, "paiza")
p a1#["paiza", "paiza", "paiza", "paiza", "paiza"]

# 2次元配列を作成してみよう
array = Array.new(5).map{Array.new(4,7)}
p array#[[7, 7, 7, 7], [7, 7, 7, 7], [7, 7, 7, 7], [7, 7, 7, 7], [7, 7, 7, 7]]


# ドットで文字を出力しよう
letter_A = [[0,0,1,1,0,0],
            [0,1,0,0,1,0],
            [1,0,0,0,0,1],
            [1,1,1,1,1,1],
            [1,0,0,0,0,1],
            [1,0,0,0,0,1]]

# ここに、ドットを表示するコードを記述する
letter_A.each do |a|
    a.each do |b|
        if b == 1
            print "@"
        else b == 0
            print " "
        end
    end
    puts ""
end
#   @@  
#  @  @ 
# @    @
# @@@@@@
# @    @
# @    @

# ドットで文字を出力しよう

letters = [[[0,0,1,1,0,0],
             [0,1,0,0,1,0],
             [1,0,0,0,0,1],
             [1,1,1,1,1,1],
             [1,0,0,0,0,1],
             [1,0,0,0,0,1]],
            [[1,1,1,1,1,0],
             [1,0,0,0,0,1],
             [1,1,1,1,1,0],
             [1,0,0,0,0,1],
             [1,0,0,0,0,1],
             [1,1,1,1,1,0]],
            [[0,1,1,1,1,0],
             [1,0,0,0,0,1],
             [1,0,0,0,0,0],
             [1,0,0,0,0,0],
             [1,0,0,0,0,1],
             [0,1,1,1,1,0]]]

# ここに、ドットを表示するコードを記述する
letters.each do |a|
    a.each do |line|
        line.each do |char|
            if char == 1
                print "@"
            else
                print " "
            end
        end
        puts ""
    end
    puts ""
end
#   @@  
#  @  @ 
# @    @
# @@@@@@
# @    @
# @    @

# @@@@@ 
# @    @
# @@@@@ 
# @    @
# @    @
# @@@@@ 

#  @@@@ 
# @    @
# @     
# @     
# @    @
#  @@@@ 

# 複数行テキストに行番号を追加する

text = ["吾輩は猫である",
        "名前はまだ無い",
        "どこで生まれたか",
        "とんと見当がつかぬ"]

#ここに、行番号を表示するコードを記述する
text.each_with_index do |line, i|
	puts "#{i+1}:#{line}"
end
# 1:吾輩は猫である
# 2:名前はまだ無い
# 3:どこで生まれたか
# 4:とんと見当がつかぬ
