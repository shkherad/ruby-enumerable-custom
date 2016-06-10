

class SteppedRange
  include Enumerable

  attr_reader :start, :stop, :step

  def each
    current = start
    while current <= stop
      yield current
      current += step
    end
  end

  #only assigns step to 1 if step is not given as an input
  def initialize (start, stop, step=1)
    @start = start
    @stop = stop
    @step = step
  end



end

new_range = SteppedRange.new(1,15,3).to_a
p new_range
