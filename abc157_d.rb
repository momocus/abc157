n, m, k = gets.chomp.split(" ").map(&:to_i)

ffbb = Array.new(n).map { Array.new(2, nil) }

ab = Array.new(m)
(1..m).each do |i|
  ab[i - 1] = gets.chomp.split(" ").map(&:to_i)
end
cd = Array.new(k)
(1..k).each do |i|
  cd[i - 1] = gets.chomp.split(" ").map(&:to_i)
end
