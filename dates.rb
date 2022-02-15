require 'time'

p "Enter a date"
d = Date.strptime(gets, '%d/%m/%Y')
p "Enter the unit of measurement (day, week, month, year)"
unit = gets.chomp
p "Enter an offset value"
value = gets.chomp.to_i
p "How many dates to display?"
amount = gets.chomp.to_i

hash = {
	"day" => lambda { |x, value| x + value },
	"week" => lambda { |x, value| x + 7*value },
	"month" => lambda { |x, value| x >> value },
	"year" => lambda { |x, value| x.next_year(value)}
}
function = hash[unit]
amount.times { p d = function.call(d, value) }