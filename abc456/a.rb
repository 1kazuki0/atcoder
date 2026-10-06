# https://atcoder.jp/contests/abc456/tasks/abc456_a
# 2026/10/06

x = gets.to_i
result = false
(1..6).each do |a|
  (1..6).each do |b|
    (1..6).each do |c|
      if a + b + c == x
        result = true
        break
      end
    end
  end
end

puts result ? "Yes" : "No"