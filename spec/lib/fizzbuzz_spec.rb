require 'fizz_buzz'

describe FizzBuzz, '#run' do
  context 'with a given start and finish' do
    before(:each) do
      @fizzbuzz = FizzBuzz.new(1, 100).run
    end
    it 'calculates fizz for multiples of 3' do
      expect(@fizzbuzz.length).to be(100)
      expect(@fizzbuzz.at(2)).to eq('Fizz'), 'expected to see Fizz instead of 3'
      expect(@fizzbuzz.at(35)).to eq('Fizz'), 'expected to see Fizz instead of 36'
    end
    it 'does not show fizz on non-multiples of 3' do
      expect(@fizzbuzz.length).to be(100)
      expect(@fizzbuzz.at(1)).to_not eq('Fizz'), 'expected to see 2 instead of Fizz'
      expect(@fizzbuzz.at(33)).to_not eq('Fizz'), 'expected to see 34 instead of Fizz'
    end
  end
  context 'with an invalid start or finish' do
    it 'raises an argument' do
      expect {
        FizzBuzz.new('cheese', 56)
      }.to raise_error 'Start and Finish must be integers'
    end
  end
end
