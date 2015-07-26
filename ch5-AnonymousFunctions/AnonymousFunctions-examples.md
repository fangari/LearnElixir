# Anonymous Functions

The examples show how to declare and call anonymous functions.

Keep in mind that when calling an anonymous function always have to use dot notation.

``` elixir
    sum = fn (a, b) -> a + b end  # => #Function<12.90072148/2 in :erl_eval.expr/5>
    sum.(1, 2)  # => 3

    greet = fn -> IO.puts "Hello" end  # => #Function<20.90072148/0 in :erl_eval.expr/5>
    greet.()
    # => Hello
    # => :ok

    f1 = fn a, b -> a * b end  # => #Function<12.90072148/2 in :erl_eval.expr/5>
    f1.(5, 6)  # => 30

    f2 = fn -> 99 end   # => #Function<20.90072148/0 in :erl_eval.expr/5>
    f2.()  # => 99

    swap = fn { a, b } -> { b, a } end  # => #Function<6.90072148/1 in :erl_eval.expr/5>
    swap.( { 6, 8 })  # => {8, 6}
```
