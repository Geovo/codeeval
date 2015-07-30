class Board
 attr_accessor :ar

def initialize
  @ar = 256.times.to_a.map! {|x| x = 256.times.to_a}
  @ar.map! {|x| x.map! {|y| y = 0}}
end

def setrow(i, x)
    #@ar.map! {|x| puts x.class}
  @ar[i.to_i].map! {|el| el = x.to_i}
  return true
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

$board.setrow(20, 3)
p $board.ar[20]
puts "=" * 40

$board.setcol(45, 8)
p $board.ar[20]
puts "=" * 40

$board.setrow(190, 18)
p $board.ar[20]
puts "=" * 40

$board.queryrow(20)
puts "=" * 40

$board.querycol(45)
puts "=" * 40

$board.queryrow(190)
#$board.setrow(20, 3)
