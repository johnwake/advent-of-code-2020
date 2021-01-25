f = File.open("./input.txt")
list = f.read
expenses_list = list.split("\n").map(&:to_i)

expenses_list.each do |expense|
  value = 2020 - expense

  if expenses_list.include?(value)
    puts "#{value} + #{expense}"
    puts value * expense
    break
  end

end
