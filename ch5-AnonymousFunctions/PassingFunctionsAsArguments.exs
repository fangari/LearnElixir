# A function can receive another function as a parameter
times_2 = fn n -> n * 2 end
apply = fn (fun, value) -> fun.(value) end
apply.(times_2, 6)  # => 12

# map takes a collection and a function and applies the function to all the elements
# on the collection
list = [1, 3, 5, 7, 9]
Enum.map list, fn elem -> elem * 2 end  # => [2, 6, 10, 14, 18]
Enum.map list, fn elem -> elem * elem end  # => [1, 9, 25, 49, 81]
Enum.map list, fn elem -> elem > 6 end  # => [false, false, false, true, true]

# The & notation
add_one = &(&1 + 1) # Same as add_one = fn (n) -> n + 1 end
add_one.(44)  # => 45

square = &(&1 * &1)  # => #Function<6.90072148/1 in :erl_eval.expr/5>
square.(8)  # => 64

speak = &(IO.puts(&1))  # => &IO.puts/1
speak.("Hello")
# => Hello
# => :ok

# Arguments must be in the correct order to use underlying function
rnd = &(Float.round(&1, &2))  # => &Float.round/2
rnd = &(Float.round(&2, &1))  # => #Function<12.90072148/2 in :erl_eval.expr/5>
absolute = &(abs(&1))  # => &:erlang.abs/1

# Literal lists and tuples can also be turned into functions
divrem = &{ div(&1, &2), rem(&1, &2) }  # => #Function<12.90072148/2 in :erl_eval.expr/5>
divrem.(13, 5)  # => {2, 3}

# Second & form. Wrapping existing functions with an anonymous function.
l = &length/1  # => &:erlang.length/1
l.([1, 3, 5, 7])  # => 4

len = &Enum.count/1  # => &Enum.count/1
len.([1, 2, 3, 4])  # => 4

m = &Kernel.min/2  # => &:erlang.min/2
m.(95, 99)  # => 95

# Full & circle
list = [1, 3, 5, 7, 9]
Enum.map list, &(&1 + 1)  # => [2, 4, 6, 8, 10]
Enum.map list, &(&1 * &1)  # => [1, 9, 25, 49, 81]
Enum.map list, &(&1 > 6)  # => [false, false, false, true, true]
