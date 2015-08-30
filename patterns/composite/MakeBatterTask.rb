require './AddDryTask'
require './MixTask'
require './CompositeTask'

class MakeBatterTask < CompositeTask
  def initialize
    super('Make Batter')
    add_sub_task(AddDryIngredientsTask.new)
    add_sub_task(MixTask.new)
  end
end
