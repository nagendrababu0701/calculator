class Calculator
  attr_reader :result

  def add(a,b)
    @result = a + b
  end

  def substract(a,b)
    @result = a - b
  end

  def multiply(a,b)
    @result = a * b 
  end

  def divide(a,b)
    begin
      @result = a / b
    rescue ZeroDivisionError
      raise 'You cant divide by Zero'
    end
  end
end