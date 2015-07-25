``` elixir
 a = 2; [ a, b, a ] = [ 1, 2, 3 ]  # => %MatchError{term: [1, 2, 3]}
 a = 2; [ a, b, a ] = [ 1, 1, 2 ]  # => %MatchError{term: [1, 1, 2]}
 a = 2; a = 1  # => 1
 a = 2; ^a = 2  # => 2
 a = 2; ^a = 1  # => %MatchError{term: 1}
 a = 2; ^a = 2 - a  # => %MatchError{term: 0}
 ```
