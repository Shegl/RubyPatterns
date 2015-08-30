require './Task'
class Bake < Task

  def initialize
    super('Baking!!')
  end

  def get_time_required
    11.0
  end
end
