# https://atcoder.jp/contests/abc473/tasks/abc473_a
# 2026/9/6 結果

total = gets.to_i
numbers = gets.split.map(&:to_i)
(1...total).each do |i|
  i.times.sum { |j| numbers[j]}
  end
end
