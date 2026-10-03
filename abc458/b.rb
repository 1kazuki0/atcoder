# https://atcoder.jp/contests/abc458/tasks/abc458_b
# 2026/10/03 結果 WA

x, y = gets.split.map(&:to_i)
result = Array.new(x) { Array.new(y, 0) }
x.times do |x_idx|
  y.times do |y_idx|
    if x == 1 && y == 1
      break
    elsif 1 <= y_idx && y_idx < y - 1 && 1 <= x_idx && x_idx < x - 1
      result[x_idx][y_idx] = 4
    elsif 1 <= y_idx && y_idx < y - 1
      result[x_idx][y_idx] = 3
    elsif 1 <= x_idx && x_idx < x - 1 && y_idx[0]
      result[x_idx][y_idx] = 3
    elsif 1 <= x_idx && x_idx < x - 1 && y_idx[-1] 
      result[x_idx][y_idx] = 3
    else
      result[x_idx][y_idx] = 2
    end
  end
end

result.each do |i|
  puts i.join(" ")
end
