def form_time(h,m,s)
  ar = [h,m,s]
  ar.map! {|x| if x.to_s.size == 1 then x = "0#{x}" else x end}
  return "#{ar[0]}:#{ar[1]}:#{ar[2]}"
end

def to_time(num)
  h = (num / 3600).floor
  hm = num % 3600
  m = (hm / 60).floor
  s = (hm % 60).to_i
  puts form_time(h,m,s)
end

File.open(ARGV[0]).each_line do |line|
  line = line.split(" ").map {|x| x = x.split(":").map(&:to_i)}
  start = line[0]
  fin = line[1]
  start_time = Time.new(2015,1,1,start[0], start[1], start[2])
  end_time = Time.new(2015,1,1,fin[0], fin[1], fin[2])
  to_time((start_time - end_time).abs)
end
