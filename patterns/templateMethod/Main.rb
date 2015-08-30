require "./HTMLReport"
require "./PlainTextReport"

reportHTML = HTMLReport.new
reportHTML.output_report

puts '***************************'

reportPlainText = PlainTextReport.new
reportPlainText.output_report
