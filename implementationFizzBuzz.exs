#If the first two arguments are 0, return "FizzBuzz". If the first is 0, return "Fizz. If the second is 0, return "Buzz".Otherwise return the third argument.
fizz_buzz = fn(0, 0, _) -> "FizzBuzz"
(0, _, _) -> "Fizz"
(_, 0, _) -> "Buzz"
(_, _, c) -> c 
end

IO.puts "Should be FizzBuzz: #{fizz_buzz.(0, 0, 100)}"
IO.puts "Should be Fizz: #{fizz_buzz.(0, 3, 100)}"
IO.puts "Should be Buzz: #{fizz_buzz.(3, 0, 100)}"
IO.puts "Should be Other: #{fizz_buzz.(3, 3, 100)}"
