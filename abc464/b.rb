# https://atcoder.jp/contests/abc464/tasks/abc464_b
# 2026/9/20 結果

h, w = gets.split.map(&:to_i)
displays = h.times.map { gets.chomp.split("") }
while !displays[0].include?("#")
  displays[0].delete(".")
end
while !displays[-1].include?("#")
  displays[-1].delete(".")
end

puts displays

# 解説
h, w = gets.split.map(&:to_i)
displays = h.times.map { gets.chomp }
rows = (0...h).select { |i| displays[i].include("#")}
cols = (0...w).select { |j| (0...h).any? { |i| displays[i][j] == "#" } }

r1, r2 = rows.min, rows.max
c1, c2 = cols.min, cols.max

(r1..r2).each { |i| puts displays[i][c1..c2] }

# (0...h).select で行の範囲の中から、trueになるものだけを残す
# displays[i].include("#") で、1行目から確認していき、"#"が含まれていればtrue
# つまり、rowsには、"#"の黒を含む行番号だけが入る。

# { |j| (0...h).any? { |i| displays[i][j] == "#" } }
#  any?はどれが1つでも true があれば true 
# displays[i][j]は i行目の文字列のj番目の文字を1文字ずつ取り出している
# つまり、「j列目を上から下まで見て、どこか1マスでも黒があるか？」を確認している。