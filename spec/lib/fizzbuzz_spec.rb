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
    it 'calculates buzz for multiples of 5' do
      expect(@fizzbuzz.length).to be(100)
      expect(@fizzbuzz.at(4)).to eq('Buzz'), 'expected to see Buzz instead of 5'
      expect(@fizzbuzz.at(34)).to eq('Buzz'), 'expected to see Buzz instead of 35'
    end
    it 'does not show fizz on non-multiples of 3' do
      expect(@fizzbuzz.length).to be(100)
      expect(@fizzbuzz.at(1)).to_not eq('Fizz'), 'expected to see 2 instead of Fizz'
      expect(@fizzbuzz.at(33)).to_not eq('Fizz'), 'expected to see 34 instead of Fizz'
    end
    it 'does not show buzz on non-multiples of 5' do
      expect(@fizzbuzz.length).to be(100)
      expect(@fizzbuzz.at(7)).to_not eq('Buzz'), 'expected to see 8 instead of Buzz'
      expect(@fizzbuzz.at(38)).to_not eq('Buzz'), 'expected to see 39 instead of Buzz'
    end
  end
  context 'with an invalid start or finish' do
    it 'raises an argument with invalid types' do
      expect {
        FizzBuzz.new('cheese', 56)
      }.to raise_error 'Start and Finish must be integers'
    end
    it 'raises an argument if it is over 100,000,000,000' do
      expect {
        FizzBuzz.new(2, 100000000001)
      }.to raise_error 'Maximum value is 100,000,000,000'
    end
  end
end
