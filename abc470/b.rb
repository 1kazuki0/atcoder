# https://atcoder.jp/contests/abc472/tasks/abc472_b
# 2026/9/9 結果 AC

total = gets.to_i
numbers = gets.split.map(&:to_i)
max_color = numbers.max_by { |i| numbers.count(i)}
rest = numbers.delete(max_color)
puts numbers.size

