# https://atcoder.jp/contests/abc472/tasks/abc472_b
# 2026/9/7 結果 WA

a, b = gets.split.map(&:to_i)
if a + b == 9
  puts "Nine"
elsif a - b == 9
  puts "Nine"
elsif a * b == 9
  puts "Nine"
elsif a / b == 9
  puts "Nine"
else
  puts "Nein"
end

