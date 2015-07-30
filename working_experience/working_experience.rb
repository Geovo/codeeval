public

def last_day(date)
  m = 0
  if date.month == 12
    m = 1
  else 
    m = date.month + 1
  end 
  n = Time.new(date.year, m, 1) - 1
  return n.day
end

def make_date(str, type)
  str = str.split(" ")
  if type == 'start'
    time = Time.local(str[1].to_i, str[0], 1)  
  elsif type == 'fin'
    day = last_day(Time.new(str[1].to_i, str[0]))
    time = Time.new(str[1].to_i, str[0], day)
  end
  return time
end

File.open(ARGV[0]).each_line do |line|
  # split the line into pairs
  line = line.chomp.split("; ")
  # split the pair into two separate times
  line.map! {|t| t = t.split("-")}
  line.map do |ary| 
    start, fin = make_date(ary[0], 'start'), make_date(ary[1], 'fin')
    puts start, fin, ""
  end
=begin
  line.map! do |ary|
    ary.map! do |str, index|
      index = ary.index(str) + 1
      str = make_date(str, index)
    end
    res = (ary[1] - ary[0])/(3600*24*365)
    puts res
  end
=end
end
