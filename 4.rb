print "Enter a: "
a = Integer(gets.chomp)
print "Enter b: "
b = Integer(gets.chomp)
print "Enter c: "
c = Integer(gets.chomp)

d = b**2 - 4 * a * c

puts
if d > 0
	puts "D: #{d}"
	x1 = ( -b + Math.sqrt(d) ) / ( 2 * a )
	x2 = ( -b - Math.sqrt(d) ) / ( 2 * a )
	puts "x1: #{x1}, x2: #{x2}"

elsif d == 0
	puts "D: #{d}"
	x1 = ( -b ) / ( 2 * a )
	puts "x1: #{x1}"

else
	puts "No roots"
end

