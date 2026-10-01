# https://atcoder.jp/contests/abc459/tasks/abc459_b
# 2026/10/01 結果　AC

def word_conversion(word)
  case word
  when "a", "b", "c"
    "2"
  when "d", "e", "f"
    "3"
  when "g", "h", "i"
    "4"
  when "j", "k", "l"
    "5"
  when "m", "n", "o"
    "6"
  when "p", "q", "r", "s"
    "7"
  when "t", "u", "v"
    "8"
  when "w", "x", "y", "z"
    "9"
  else
  end
end

total = gets.to_i
words = gets.chomp.split
result = ""
words.each do |word|
  x = word.chars
  result += word_conversion(x[0])
end

puts result