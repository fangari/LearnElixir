handle_open = fn
  {:ok, file} -> "First line: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("AnonymousFunctions-examples.md"))
# => First line: # Anonymous Functions
# => :ok

IO.puts handle_open.(File.open("nonexistent"))
# => Error: no such file or directory
