f = File.open("./input.txt")
list = f.read

map = list.split("\n").map { |line| line.split('') }
