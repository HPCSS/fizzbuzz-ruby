# coding: utf-8
require 'test/unit'
require './fizzbuzz'

class FizzBuzzTest < Test::Unit::TestCase
  def setup
    @number = (1..100).to_a
  end

  def test_fizz
    num = @number.select {|n| n % 3 == 0 && n % 5 != 0}
    num.each do |i|
      assert_equal FizzBuzz.new(i).says, "Fizz", "入力値が3で割り切れる時Fizzが出力されませんでした"
    end
  end

  def test_buzz
    num = @number.select {|n| n % 3 != 0 && n % 5 == 0}
    num.each do |i|
      assert_equal FizzBuzz.new(i).says, "Buzz", "入力値が5で割り切れる時Buzzが出力されませんでした"
    end
  end

  def test_fizzbuzz
    num = @number.select {|n| n % 3 == 0 && n % 5 == 0}
    num.each do |i|
      assert_equal FizzBuzz.new(i).says, "FizzBuzz", "入力値が3と5で割り切れる時FizzBuzzが出力されませんでした"
    end
  end

  def test_number
    num = @number.select {|n| n % 3 != 0 && n % 5 != 0}
    num.each do |i|
      assert_equal FizzBuzz.new(i).says, i, "入力値が3や5で割り切れない時入力値が出力されませんでした"
    end
  end
end
