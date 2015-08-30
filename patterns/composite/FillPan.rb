require './Task'
class FillPan < Task

  def initialize
    super('Filling pan!!')
  end

  def get_time_required
    7.0
  end
end
