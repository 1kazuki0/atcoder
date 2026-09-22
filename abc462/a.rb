# https://atcoder.jp/contests/abc462/tasks/abc462_a
# 2026/9/22 結果

word = gets.chomp.split("")
result = ''
word.each do |i|
  unless i =~ /[a-z]/
    result << i
  end
end

puts result