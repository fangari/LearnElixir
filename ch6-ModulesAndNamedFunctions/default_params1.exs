defmodule DefaultParams1 do
  def func(p1, p2 \\ 123) do
    IO.inspect [p1, p2]
  end
  def func(p1, 99) do
    IO.puts "You said 99"
  end
end
# => %CompileError{description: "def func/2 has default values and multiple clauses, define a function head with the defaults",
# =>  file: "nofile", line: 5}
