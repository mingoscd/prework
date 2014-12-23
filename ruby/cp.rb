puts "What is the source file?"
source = gets.chomp
source_content = IO.read(source)
puts "What is the destination file?"
target = gets.chomp
IO.write(target, source_content)