require './Report.rb'
require './HTMLFormatter.rb'
require './PlainTextFormatter.rb'

report = Report.new (HTMLFormatter.new)
report.output_report

report.formatter = PlainTextFormatter.new
report.output_report
