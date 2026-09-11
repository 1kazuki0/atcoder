# https://atcoder.jp/contests/abc469/tasks/abc469_a
# 2026/9/10 結果 AC

a, b = gets.split.map(&:to_i)
total = (1..a).to_a
puts total[-b]
