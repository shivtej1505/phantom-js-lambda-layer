require 'nokogiri'
filename = "lite.html"
html = File.open(filename).read
document = Nokogiri::HTML.parse(html)
grand_total_element = document.xpath("//tr[@class='grand-total']/td[last()]").first

grand_total = grand_total_element.text.to_i

puts grand_total

