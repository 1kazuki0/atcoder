# https://atcoder.jp/contests/abc468/tasks/abc468_b
# 2026/9/13 結果 WA

total, distance = gets.split.map(&:to_i)
g = gets.chomp.chars
x = distance * 2 + 1
if x > total
  x = total
end
sum = 0
g.each_cons(x) do |i|
  sum += 1 if !i.include?("G")
end

puts sum

# 解説
total, distance = gets.split.map(&:to_i)
g = gets.chomp.chars
watched = Array.new(total, false)
g.each_with_index do |c, idx|
  next unless c == 'G'
  ([0, idx - distance].max..[total - 1, idx + distance].min).each { |x| watched[x] = true}
end

puts watched.count(false)

# next unless c == 'G'は、cがGでなければ次へ進む 処理
# この文字がGでなければ、以降の処理をスキップして次の文字へ進む
# つまり、.（誰もいないマス）は無視して、Gのマスだけを処理対象にしている

# [0, idx - distance].max
# idxは配列の取り出した順番、distanceは監視の距離
# つまり、0 か Gの位置から監視までの距離のどちらか大きい方

# [total - 1, idx + distance].min
# total - 1 はつまり最後の配列の場所
# つまり、最後の配列の場所 か Gの位置から監視までの距離のどちらか小さい方
# （idx + distanceで、配列より超えてしまう可能性があるので、minでどちらか小さい方にしている）

# ([0, idx - distance].max..[total - 1, idx + distance].min)
# つまり、Gからみて前方と後方の監視の範囲の数字を出している

# each { |x| watched[x] = true}
# 監視の範囲をすべてfalseからtrueにしている。
