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
end
