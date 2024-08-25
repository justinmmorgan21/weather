file = File.open("weather.dat")
file_data = file.readlines.map(&:chomp)
file_data.shift()
file_data.shift()
day_with_smallest_spread = 0
smallest_spread = -1
file_data.each { |line|
  #pp line
  data = line.split(" ")
  #pp "#{data[0]}, #{data[1]}, #{data[2]}"
  day = data[0].to_i
  spread = data[1].to_i - data[2].to_i
  #p spread
  if smallest_spread == -1 || spread < smallest_spread
    #puts "SMALLER"
    smallest_spread = spread
    day_with_smallest_spread = day
  end
}
puts day_with_smallest_spread
