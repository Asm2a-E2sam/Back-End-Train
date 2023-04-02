defmodule Fibonacci do
  def fibonacci() do
    fn a, b ->
      c = a + b
      {b, c}
    end
  end

  def fib(0, _func, _a, _b), do: []
  def fib(n, func, a, b) do
    {new_a, new_b} = func.(a, b)
    [new_a | fib(n-1, func, new_a, new_b)]
  end
end

fib_func = Fibonacci.fibonacci()
fib_sequence = Fibonacci.fib(10, fib_func, 0, 1)

Enum.each(fib_sequence, fn x -> IO.puts(x) end)
