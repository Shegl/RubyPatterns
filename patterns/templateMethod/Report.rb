class Report
  def initialize
    @title = 'Monthly Report'
    @text = ['Things are going' , 'really, really well.']
  end

  def output_report(format)
    lines = ''
    @text.each do |line|
      lines += "<p>#{line}</p>"
    end
    puts '<html><head><title>' + "#{@title}" + '</title></head><body>' + "#{lines}" + '</body></html>'
  end
end

rep = Report.new
rep.output_report
