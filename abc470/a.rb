# https://atcoder.jp/contests/abc472/tasks/abc472_b
# 2026/9/8 結果 AC

# 回答
total = gets.to_i
(1..total).each do |i|
  if i % 3 == 0
    puts "Fizz"
  else
    puts i
  end
end
