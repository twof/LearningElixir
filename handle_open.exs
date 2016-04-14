handle_open = fn({:ok, file}) -> "First line: #{IO.read(file, :line)}" #Using a #{} within a quote causes the return value of the contained code to be added to the string

({_, error}) -> "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("/Users/fnord/Documents/Elixir/helloWorld.exs")) #Calls the above function with the opening of an existing file. Opening the file returns a tupal.

IO.puts handle_open.(File.open("whatever")) #This file doesn't exist so it should trigger the second implementation
