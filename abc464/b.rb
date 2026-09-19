# https://atcoder.jp/contests/abc464/tasks/abc464_b
# 2026/9/20 結果

h, w = gets.split.map(&:to_i)
displays = h.times.map { gets.chomp.split("") }
while !displays[0].include?("#")
  displays[0].delete(".")
end
while !displays[-1].include?("#")
  displays[-1].delete(".")
end

puts displays