# https://atcoder.jp/contests/abc459/tasks/abc459_a
# 2026/09/29 結果 AC

total = gets.to_i
x = "HelloWorld".chars
x.delete_at(total - 1)
puts x.join("")
