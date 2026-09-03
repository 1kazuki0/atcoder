# https://atcoder.jp/contests/abc473/tasks/abc473_a
# 結果 AC

total = gets.to_i
numbers = gets.split.map(&:to_i)
sum = numbers[total / 2, total / 2].sum
puts sum