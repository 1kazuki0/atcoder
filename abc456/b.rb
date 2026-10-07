# https://atcoder.jp/contests/abc456/tasks/abc456_b
# 2026/10/07 結果 AC

x = Array.new(3) { gets.split.map(&:to_i) }
count = 0
x[0].each do |a|
  x[1].each do |b|
    x[2].each do |c|
      count += 1 if [a, b, c].sort == [4, 5, 6]
    end
  end
end
puts count / 216.0