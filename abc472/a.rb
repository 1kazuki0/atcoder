# https://atcoder.jp/contests/abc473/tasks/abc473_a
# 2026/9/5 結果 AC

word = gets.chomp
result = word.chars.map do |i|
  if i == "A"
    "A"
  else
    "."
  end
end

puts result.join
