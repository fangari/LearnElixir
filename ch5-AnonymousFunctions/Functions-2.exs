fizzbuzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> c
end

fizzbuzz.(0, 0, :test)  # => "FizzBuzz"
fizzbuzz.(0, :second, :test)  # => "Fizz"
fizzbuzz.(:third, 0, :test)  # => "Buzz"
fizzbuzz.(:fourth, :passing, :test)  # => :test
