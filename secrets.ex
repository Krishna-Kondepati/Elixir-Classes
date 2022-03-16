defmodule Secrets do
  use Bitwise

  def secret_add(secret) do
    fn (y) -> secret+y end
    #&(&1 + secret)
  end

  def secret_subtract(secret) do
    fn (y) -> y-secret end
  end

  def secret_multiply(secret) do
    fn (y) -> y * secret end
  end

  def secret_divide(secret) do
    fn (y) -> div(y, secret) end
  end

  def secret_and(secret) do
    #Bitwise band operator checks if both arguments passed are same based on logical operation.
    # If they are same, it responds with 0 else 1.
    fn (y) -> Bitwise.band(y, secret) end
  end

  def secret_xor(secret) do
    fn (y) -> Bitwise.bxor(y, secret) end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn (y) -> secret_function2.(secret_function1.(y)) end
  end

end
