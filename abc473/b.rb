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

# 正解
gets
p count = Hash.new(0) # ハッシュを作成、初期値は0（{}なら → count[a]がnilを返すので、nil + 1となりエラーで止まるため）
gets.split.map(&to_i).each { |a| count[a] += 1 } # ハッシュ作成から.eachの処理はtallyメソッドでも代用可能
puts count.sum { |k, v| v.odd? ? k : 0} # ペアのカードは残るので、偶数は消え、奇数のみ残る

