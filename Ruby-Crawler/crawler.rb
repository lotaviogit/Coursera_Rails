require 'net/http'

path = "http://food2fork.com/view/Campbells_Kitchen_Creamy_Chicken_Enchiladas/5598"

# http://food2fork.com/view/e7fdb2
# source = Net::HTTP.get('food2fork.com', '/view/Campbells_Kitchen_Creamy_Chicken_Enchiladas/5598')
source = Net::HTTP.get_response('food2fork.com', '/view/e7fdb2')['location']
puts source
temp = source.split("\n")

c = 0
temp.each do |s|
	puts temp
end
puts c

# puts source

file = File.new("page.html", 'r')

counter = 0
while (line = file.gets)
    line = line.strip
    if (line =~ /^<li.*=\"ingredients\">/)
    	puts line.match(/^<li itemprop=\"ingredients\">(.*)<\/li>/)[1]
    end
end
file.close
# puts counter