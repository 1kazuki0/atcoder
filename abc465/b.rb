# https://atcoder.jp/contests/abc465/tasks/abc465_a
# 2026/9/18 結果 WA

x, y, l, r, a, b = gets.split.map(&:to_i)
sum = 0
if l - a > 0 
  p sum += (l - a) * y
end
if b - r > 0
  p sum += (b - r) * y
end
if (r - l) - (l - a) - (b - r) > 0
  p sum += ((r - l) - (l - a) - (b - r)) * x
end

puts sum