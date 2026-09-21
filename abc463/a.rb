# https://atcoder.jp/contests/abc463/tasks/abc463_a
# 2026/9/21 結果

w, h = gets.split.map(&:to_i)
puts w % 16 == 0 && h % 9 == 0 ? "Yes" : "No"