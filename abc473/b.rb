# https://atcoder.jp/contests/abc473/tasks/abc473_b
# 2026/9/4 結果 WA

total = gets.to_i
cards = gets.split.map(&:to_i).sort
total.times do |i|
  if cards[i] == cards[i + 1]
    cards.delete(cards[i])
    cards.delete(cards[i + 1])
  end
end
puts cards.sum

