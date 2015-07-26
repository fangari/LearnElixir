fizzbuzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> c
end

fizzbuzzed = fn(n) -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

[fizzbuzzed.(10),
 fizzbuzzed.(11),
 fizzbuzzed.(12),
 fizzbuzzed.(13),
 fizzbuzzed.(14),
 fizzbuzzed.(15),
 fizzbuzzed.(16),
 fizzbuzzed.(17)]  # => ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16, 17]
