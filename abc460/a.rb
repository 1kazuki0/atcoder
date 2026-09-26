# https://atcoder.jp/contests/abc460/tasks/abc460_a
# 2026/09/26 結果 AC

n, m = gets.split.map(&:to_i)
count = 0
while m != 0
  m = n % m
  count += 1
end
puts count