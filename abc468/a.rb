# https://atcoder.jp/contests/abc468/tasks/abc468_a
# 2026/9/12 結果 AC

total = gets.to_i
numbers = gets.split.map(&:to_i)
sum = 0
(total - 2).times do |idx|
  i = idx + 1
  if numbers[i - 1] < numbers[i] && numbers[i] > numbers[i + 1]
    sum += 1
  end
end

puts sum