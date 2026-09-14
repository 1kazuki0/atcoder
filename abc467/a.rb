# https://atcoder.jp/contests/abc467/tasks/abc467_a
# 2026/9/14 結果 WA

h, w = gets.split.map(&:to_i)
h_m = h * 0.01
puts w / h_m / h_m >= 25 ? "Yes" : "No"
