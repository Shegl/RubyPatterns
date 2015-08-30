require './CompositeTask'
require './MakeBatterTask'
require './Bake'
require './Frost'
require './FillPan'

class MakeCake < CompositeTask
  def initialize
    super('Make Batter')
    add_sub_task(MakeBatterTask.new)
    add_sub_task(FillPan.new)
    add_sub_task(Bake.new)
    add_sub_task(Frost.new)
  end
end
