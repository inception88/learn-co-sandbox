require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

puts doc.css("h1.site-header__hero__headline")
puts doc.css(".site-header__hero__headline").text

html = open("https://web.archive.org/web/20160227204808/http://flatironschool.com/team")
doc = Nokogiri::HTML(html)
 
instructors = doc.css("#instructors .team-holder .person-box")
instructors.each do |instructor| 
  puts "Flatiron School <3 " + instructor.css("h2").text
end