require_relative('lib/car')
require 'faraday'
require 'faraday_middleware'

puts
puts "Enter information for car that you want details."
puts

print "Make: "
make = gets.chomp

print "Model: "
model = gets.chomp

print "Year: "
year = gets.chomp

car = Car.new(make: make, model: model, year: year)

url = 'https://api.edmunds.com/api/vehicle/v2'
 
conn = Faraday.new(url: url) do |faraday|
  faraday.adapter Faraday.default_adapter
  faraday.response :json, :content_type => /\bjson$/
end
 
response = conn.get('makes', name: @make, model: @model, year: @year, api_key: 'z9tgtscamtr5u6tvyaud5c8w')
puts response.body