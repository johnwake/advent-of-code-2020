f = File.open("./input.txt")
list = f.read
list_items = list.split("\n")

value = 0

list_items.each do |line|
    start, finish, letter, password = line.tr('-', ' ').split(' ')

    if password.count(letter).between?(start.to_i, finish.to_i)
        value += 1
    end
end

puts value
