f = File.open("./input.txt")
list = f.read
list_items = list.split("\n")

puts list_items.count { |line|
  policy, password  = line.split(":").map(&:strip)

  positions, letter = policy.split(" ")
  pos_1, pos_2 = positions.split("-").map(&:to_i)

  (password[pos_1 - 1] == letter) ^ (password[pos_2 - 1] == letter)
}