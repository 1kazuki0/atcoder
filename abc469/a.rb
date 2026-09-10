# https://atcoder.jp/contests/abc472/tasks/abc472_b
# 2026/9/10 結果 AC

a, b = gets.split.map(&:to_i)
total = (1..a).to_a
puts total[-b]
