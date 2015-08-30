require './CompositeTask'
require './MakeBatterTask'
require './Bake'
require './Frost'
require './FillPan'

class MakeCake < CompositeTask
  def initialize
    super('Make Batter')
    self[0] = MakeBatterTask.new
    self[1] = FillPan.new
    self << Bake.new
    self.add_sub_task Frost.new
  end
end
