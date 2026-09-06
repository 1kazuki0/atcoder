# https://atcoder.jp/contests/abc472/tasks/abc472_b
# 2026/9/6 結果 CE

total = gets.to_i
numbers = gets.split.map(&:to_i)
(1...total).each do |i|
  i.times.sum { |j| numbers[j]}
  end
end

# 正解
gets
l = gets.split.map(&:to_i)
total = l.sum
left = 0
puts l[0...-1].map { |x| left += x; (total - 2 * left).abs }.min

# 配列の取り方
# 配列の...は一番最後は取り出さないので
# l[0...-1]は0番目から最後より1つ手前まで取り出す
# 例：（l = [5, 2, 3, 8]の時、l[0...-1]は[5, 2, 3]である）

# .map { |x| left += x; (total - 2 * left).abs }.min
# ループ1回目（一番左5と2, 3, 8の場合）
# left += x → left は0 + 5 = 5 
# (total - 2 * left).abs → (18 - 2 * 5).abs = (18 - 10).abs = 8.abs = 8
# をループ分計算して、minメソッドで最小の数字を出力する
