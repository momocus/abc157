def format_output(val)
  if val.length > 1 && val[0].nil? # 2桁以上のとき、左から一桁目がnilなら1をいれる
    val[0] = 1
  end
  val.map! { |e| # nilの桁に0をいれる
    if e.nil?
      0
    else
      e
    end
  }
  val.inject("") { |str, e| str + e.to_s }
end

n, m = gets.chomp.split(" ").map(&:to_i)

sc = Array.new(m)
val = Array.new(n + 1)

(1..m).each do |i|
  sc[i - 1] = gets.chomp.split(" ").map(&:to_i)
end

success = true
sc.each do |s, c|
  if val[s].nil? || val[s] == c
    val[s] = c
  else
    success = false
    break
  end
end

val = val[1..-1] #index一個ずらし
if val[0] == 0 && n != 1
  success = false
end

if success
  puts(format_output(val))
else
  puts(-1)
end
