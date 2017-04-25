class FizzBuzz
  def initialize(start, finish)
    raise 'Start and Finish must be integers' unless start.is_a? Integer and finish.is_a? Integer
    @start = start
    @finish = finish
  end

  def run
    results = []
    (@start...@finish + 1).each {|i|
      if i % 3 == 0
        results.push('Fizz')
      elsif i % 5 == 0
        results.push('Buzz')
      else
        results.push(i)
      end
    }
    results
  end
end
