require_relative '../solver'
require 'rspec/mocks'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  context '#factorial method' do
    it 'returns 1 for 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'returns 1 for 1' do
      expect(@solver.factorial(1)).to eq(1)
    end

    it 'returns the correct factorial' do
      expect(@solver.factorial(5)).to eq(120)
    end

    it 'raises an ArgumentError with negative integer' do
      expect(@solver.factorial(-2)).to eq('Please enter a number greater than or equal to 0')
    end
  end

  context '#reverse method' do
    it 'returns an empty string when the argument is empty' do
      expect(@solver.reverse('')).to eq('')
    end

    it 'reverses a string' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end
  end

  context '#fizzbuzz method' do
    it 'returns "fizz" when divisible by 3' do
      expect(@solver.fizzbuzz(3)).to eq('fizz')
    end

    it 'returns "buzz" when divisible by 5' do
      expect(@solver.fizzbuzz(5)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when divisible by both 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns the number as a string when not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(7)).to eq('7')
    end
  end
end
