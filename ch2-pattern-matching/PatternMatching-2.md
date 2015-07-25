``` elixir
[ a, b, a ] = [ 1, 2, 3 ]  # => %MatchError{term: [1, 2, 3]}
[ a, b, a ] = [ 1, 1, 2 ]  # => %MatchError{term: [1, 1, 2]}
[ a, b, a ] = [ 1, 2, 1 ]  # => [1, 2, 1]
```
