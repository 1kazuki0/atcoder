# https://atcoder.jp/contests/abc461/tasks/abc461_b
# 2026/09/25 結果　AC

total = gets.to_i
claims = gets.split.map(&:to_i)
goddess = gets.split.map(&:to_i)

ok = (0...total).all? { |i| goddess[claims[i] - 1] == i + 1 }
puts ok ? "Yes" : "No"