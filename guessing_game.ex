defmodule GuessingGame do
  def compare(secret_number, guess) when guess == secret_number do
    # Please implement the compare/2 function
    "Correct"
  end

  def compare(secret_number, guess) when guess > secret_number do
    # Please implement the compare/2 function
    "Too high"
  end

  def compare(secret_number, guess) when guess < secret_number do
    # Please implement the compare/2 function
    "Too low"
  end

  def compare(secret_number, guess) when guess + OR - secret_number do
    # Please implement the compare/2 function
    "So close"
  end

  def compare(secret_number, guess \\ 0) do
    # Please implement the compare/2 function
    "Make a guess"
  end
end
