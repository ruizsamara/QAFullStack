# Loop -> times
# 5.times do
#   puts "Repetindo a mensagem"
# end

# 5.times do |i|
#   puts "Repetindo a mensagem " + i.to_s + " vez(es)."
# end

# Loop -> While
# init = 0
# while init <= 10
#   puts "Repetindo a mensagem " + init.to_s + " vez(es)."
#   init += 1
# end

# Loop -> For
# for item in (0...10)
#   puts "Repetindo a mensagem " + item.to_s + " vez(es)."
# end

#Arrays - Foreach

vingadores = ["Ironman", "Hulk", "Thor", "Spiderman"]

vingadores.each do |v|
  puts v
end
