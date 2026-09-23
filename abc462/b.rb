# https://atcoder.jp/contests/abc462/tasks/abc462_b
# 2026/9/23 結果 AC

people = gets.to_i
gifts = people.times.map { gets.chomp.split }
people.times do |i|
  count = []
  gifts.each_with_index do |j, idx|
    if j[1..].include?((i + 1).to_s)
      count << idx + 1
    end
  end

  puts "#{count.size} #{count.join(" ")}"
end
