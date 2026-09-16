# https://atcoder.jp/contests/abc467/tasks/abc467_a
# 2026/9/16 結果 AC

total, colors = gets.split.map(&:to_i)
balls = total.times.map { gets.split.map(&:to_i)}
result = []
(1..colors).each do |i|
  big = -1
  balls.each do |a, b|
    if a == i
      big = b if b > big
    end
  end
  result << big
end

puts result.join(" ")
