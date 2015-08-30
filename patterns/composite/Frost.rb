require './Task'
class Frost < Task

  def initialize
    super('Now we gonna frost this up!')
  end

  def get_time_required
    20.0
  end
end
