require 'nokogiri'
require 'open-uri'
require 'csv'

url = 'https://www.hospitalsafetygrade.org/all-hospitals'

CSV.open('hospitals.csv', 'w') do |csv|
  csv << ['Hospital Name', 'Grade']

  html = URI.open(url)
  doc = Nokogiri::HTML(html)

  doc.css('.table--is-scrollable tbody tr').each do |row|
    name = row.at_css('td:nth-child(2)').text.strip
    grade = row.at_css('td:nth-child(3)').text.strip

    csv << [name, grade]
  end
end

puts 'Дані збережено у hospitals.csv'
