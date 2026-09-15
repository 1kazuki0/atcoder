# https://atcoder.jp/contests/abc467/tasks/abc467_a
# 2026/9/15 結果 AC

total = gets.to_i
emotions = gets.split.map(&:to_i)
result = false
emotions.each do |i|
  if i >= 0
    result = true
    break
  end
end

puts result ? "No" : "Yes"
