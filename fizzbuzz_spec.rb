# coding: utf-8

require 'rubygems'
require 'rspec'
require './fizzbuzz'

describe FizzBuzz do

  context "入力された数字が" do
    before :each do
      @number = (1..100).to_a
    end

    it "3で割り切れる場合はFizz" do
      num = @number.select {|n| n % 3 == 0 && n % 5 != 0}
      num.each do |i|
        FizzBuzz.new(i).says.should == "Fizz"
      end
    end

    it "5で割り切れる場合はBuzz" do
      num = @number.select {|n| n % 3 != 0 && n % 5 == 0}
      num.each do |i|
        FizzBuzz.new(i).says.should == "Buzz"
      end
    end

    it "15で割り切れる場合はFizzBuzz" do
      num = @number.select {|n| n % 3 == 0 && n % 5 == 0}
      num.each do |i|
        FizzBuzz.new(i).says.should == "FizzBuzz"
      end
    end

    it "3でも5でも割り切れるない場合は入力された数字を表示" do
      num = @number.select {|n| n % 3 != 0 && n % 5 != 0}
      num.each do |i|
        FizzBuzz.new(i).says.should == i
      end
    end
  end
end
