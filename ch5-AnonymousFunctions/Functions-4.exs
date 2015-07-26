prefix = fn pref -> (fn complement -> "#{pref} #{complement}" end) end

mrs = prefix.("Mrs")
mrs.("Smith")  # => "Mrs Smith"

prefix.("Elixir").("Rocks")  # => "Elixir Rocks"
