class Calculator
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def add
    num1 + num2
  end

  def subtract
    num1 - num2
  end

  def multiply
    num1 * num2
  end

  def divide
    return 'impossible to divide by zero' if num2.zero?

    num1 / num2
  end

  private

  attr_accessor :num1, :num2
end