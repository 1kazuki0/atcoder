# https://atcoder.jp/contests/abc468/tasks/abc468_b
# 2026/9/13 結果 WA

total, distance = gets.split.map(&:to_i)
g = gets.chomp.chars
x = distance * 2 + 1
if x > total
  x = total
end
sum = 0
g.each_cons(x) do |i|
  sum += 1 if !i.include?("G")
end

puts sum