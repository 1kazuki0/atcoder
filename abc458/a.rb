# https://atcoder.jp/contests/abc458/tasks/abc458_a
# 2026/10/02 結果 AC

word = gets.chomp.split("")
number = gets.to_i
number.times do
  word.delete_at(0)
  word.delete_at(-1)
end

puts word.join("")