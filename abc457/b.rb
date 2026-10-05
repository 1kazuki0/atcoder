# https://atcoder.jp/contests/abc457/tasks/abc457_b
# 2026/10/05 結果 AC

total = gets.to_i
result = total.times.map { gets.split.map(&:to_i) }
x, y = gets.split.map(&:to_i)
puts result[x - 1][y]
