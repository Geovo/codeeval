class Board
 attr_accessor :ar

def initialize
  @ar = 256.times.to_a.map! {|x| x = 256.times.to_a}
  @ar.map! {|x| x.map! {|y| y = 0}}
end

def setrow(i, x)
  @ar[i.to_i].map! {|el| el = x.to_i}
#  return true
end

def setcol(j, x)
  @ar.map {|row| row[j.to_i] = x}
#  return true
end

def queryrow(row)
  res = @ar[row.to_i].inject {|a,b| a + b}
  puts res
end

def querycol(col)
  sum = 0
  @ar.map {|ary| sum += ary[col.to_i]}
  puts sum
end
end # end of class

$board = Board.new

File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(" ")
  quer = line.shift
  line.map!(&:to_i)
  if quer == "SetCol"
    $board.setcol(line[0], line[1])
  elsif quer == "SetRow"
    $board.setrow(line[0], line[1])
  elsif quer == "QueryRow"
    $board.queryrow(line[0])
  elsif quer == "QueryCol"
    $board.querycol(line[0])
  end
end

