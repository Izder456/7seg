require "benchmark"

def one
  puts "Testing : Type one"
  time = Benchmark.measure {
    words = %w()
    File.open("words.txt", "r") do |f|
      f.each_line do |line|
        words += line.split
      end
    end
  }
  puts "Results :"
  puts time
end

def two
  puts "Testing : Type two"
  time = Benchmark.measure {
    words = File.read("words.txt")
    words = words.split("\n")
  }
  puts "Results :"
  puts time
end

#call the functions
one
two