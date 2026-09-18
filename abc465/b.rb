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

# 解説
x, y, l, r, a, b = gets.split.map(&:to_i)
total = 0
(a...b).each do |h|
  total += (h >= l && h < r) ? x : y
end

puts total

# (a...b).eachは実際に駐車した時の時間を1時間ずつ出力している
# 時間が8時から17時（a → 8、b → 17）の場合、
# 8, 9, 10,,,,,,16まで（...はここからここまでという範囲で終端を含まない）

# (h >= l && h < r) ? x : yのhは1時間ごとの値
# この値が、駐車時間のl <= h < rで時間内かどうか確認している。
# 時間内ならxの料金、時間外ならyの料金