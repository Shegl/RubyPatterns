class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @title = 'Monthly Report'
    @text = ['Things are going fine', 'Really, really well']
    @formatter = formatter
  end

  def output_report
    @formatter.call(@title, @text)
  end
end
