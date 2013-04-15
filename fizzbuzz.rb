class FizzBuzz

  def initialize(number)
    @number = number
  end

  def says
    if    @number % 15 == 0 then "FizzBuzz"
    elsif @number % 5 == 0  then "Buzz"
    elsif @number % 3 == 0  then "Fizz"
    else  @number
    end
  end
end
