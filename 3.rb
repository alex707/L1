print 'Enter a: '
a = gets.chomp.to_f
print 'Enter b: '
b = gets.chomp.to_f
print 'Enter c: '
c = gets.chomp.to_f

is_rectangular = false
add_inf = ''

if (a == b) && (b == c)
  add_inf = 'equilateral'
elsif (a == b) || (b == c) || (c == a)
  add_inf = 'isosceles'

  if (a == b)
    is_rectangular = a**2 + b**2 == c**2  
  elsif (b == c)
    is_rectangular = b**2 + c**2 == a**2
  elsif (c == a)
    is_rectangular = c**2 + a**2 == b**2
  end

else
  if (a > b) && (a > c)
    is_rectangular = b**2 + c**2 == a**2  
  elsif (b > c) && (b > a)
    is_rectangular = a**2 + c**2 == b**2
  elsif (c > a) && (c > b)
    is_rectangular = b**2 + a**2 == c**2
  end
end


add_inf = '(' + add_inf + ')' if add_inf.length > 0

puts
if is_rectangular
  puts "Triangle is rectangular. #{add_inf}"
else
  puts "Triangle is not rectangular. #{add_inf}"
end

