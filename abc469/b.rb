# https://atcoder.jp/contests/abc469/tasks/abc469_b
# 2026/9/11 結果 AC

total = gets.to_i
chairs = gets.chomp.split("")
sum = 0
chairs.each_with_index do |chair, idx|
  rule_1 = chair == "x"
  rule_2 = idx == 0 || chairs[idx - 1] == "x"
  rule_3 = idx == total - 1 || chairs[idx + 1] == "x"
  if rule_1 && rule_2 && rule_3
    sum += 1
  end
end

puts sum
