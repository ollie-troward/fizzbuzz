class FizzBuzz
  def initialize(start, finish, favourites = [])
    raise 'Start and Finish must be integers' unless start.is_a? Integer and finish.is_a? Integer
    raise 'Maximum value is 100,000,000,000' unless finish <= 100000000000
    @start = start
    @finish = finish
    @favourites = favourites
  end

  def run
    results = []
    (@start...@finish + 1).each {|i|
      if i % 3 == 0
        results.push({:number => 'Fizz', :favourite => @favourites.include?(i)})
      elsif i % 5 == 0
        results.push({:number => 'Buzz', :favourite => @favourites.include?(i)})
      else
        results.push({:number => i, :favourite => @favourites.include?(i)})
      end
    }
    results
  end
end
