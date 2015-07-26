list_concat = fn list, other_list -> list ++ other_list end  # => #Function<12.90072148/2 in :erl_eval.expr/5>
list_concat.([:a, :b], [:c, :d])  # => [:a, :b, :c, :d]

sum = fn ( a, b, c ) -> a + b + c end  # => #Function<18.90072148/3 in :erl_eval.expr/5>
sum.(1, 2, 3)  # => 6

pair_tuple_to_list = fn ( {a, b} ) -> [a, b] end  # => #Function<6.90072148/1 in :erl_eval.expr/5>
pair_tuple_to_list.( { 1234, 5678 } )  # => [1234, 5678]
