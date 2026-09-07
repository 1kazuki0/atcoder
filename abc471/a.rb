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

# 正解
a, b = gets.split.map(&:to_i)
if a + b == 9
  puts "Nine"
elsif a - b == 9
  puts "Nine"
elsif a * b == 9
  puts "Nine"
elsif a / b == 9 && a % b == 0
  puts "Nine"
else
  puts "Nein"
end

# 解説
# 割り算の場合、割り切れなくても小数点を切り落としてしまうので、
# 例えば、19 / 2 の答えは9になってしまう。
# 割り切れるかどうかを確かめるために a % b == 0を条件として増やす。