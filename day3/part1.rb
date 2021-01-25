f = File.open("./input.txt")
list = f.read

map = list.split("\n").map { |line| line.split('') }

x, y, trees = 0, 0, 0
right = 3
down = 1

while y < map.length - 1
  x += right
  x %= map[0].length
  y += down

  trees += 1 if map[y][x] == '#'
end

puts trees
