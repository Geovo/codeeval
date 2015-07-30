require 'json'

str = '{"menu": {"header": "menu", "items": [{"id": 27}, {"id": 0, "label": "Label 0"}, null, {"id": 93}, {"id": 85}, {"id": 54}, null, {"id": 46, "label": "Label 46"}]}}'
parsed = JSON.parse(str)
ar = parsed['menu']['items']
ar.select! {|el| el.class == Hash}
sum = 0
ar.each {|hash| sum += hash['id'] if hash['label']}
puts sum


#First submit

=begin
require 'json'

File.open(ARGV[0]).each_line do |line|
parsed = JSON.parse(line)
ar = parsed['menu']['items']
ar.select! {|el| el.class == Hash}
sum = 0
ar.each {|hash| sum += hash['id'] if hash['label']}
puts sum
end
	


	
=end