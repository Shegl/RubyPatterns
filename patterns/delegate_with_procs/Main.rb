require './Report.rb'

htmlformat = lambda do | title , text |
  puts('<html>')
  puts('  <head>')
  puts("    <title>#{title}</title>")
  puts('  </head>')
  puts('  <body>')
  text.each do |line|
    puts("    <p>#{line}</p>")
  end
  puts '  </body>'
  puts '</html>'
end

plaintextformat = lambda do | title, text |
  puts "*** #{title} ***"
  text.each do |line|
    puts "-- #{line}"
  end
end

report = Report.new (htmlformat)
report.output_report

report.formatter = plaintextformat
report.output_report

# NICE
