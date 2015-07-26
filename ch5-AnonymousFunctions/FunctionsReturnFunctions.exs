greeter = fn name -> (fn -> "Hello #{name}" end) end  # => #Function<6.90072148/1 in :erl_eval.expr/5>
dave_greeter = greeter.("Dave")  # => #Function<20.90072148/0 in :erl_eval.expr/5>
dave_greeter.()  # => "Hello Dave"

add_n = fn n -> (fn other -> n + other end) end  # => #Function<6.90072148/1 in :erl_eval.expr/5>
add_two = add_n.(2)  # => #Function<6.90072148/1 in :erl_eval.expr/5>
add_five = add_n.(5)  # => #Function<6.90072148/1 in :erl_eval.expr/5>
add_two.(3)  # => 5
add_five.(7)  # => 12
