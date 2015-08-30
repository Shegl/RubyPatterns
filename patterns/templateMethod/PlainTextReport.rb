require "./Report"

class PlainTextReport < Report
  def output_start
    puts ""
  end

  def output_head
    puts "*** #{@title} ***"
  end

  def output_body_start
    puts ''
  end

  def output_line(line)
    puts "-- #{line}"
  end

  def output_body_end
    puts ''
  end

  def output_end
    puts "*** END ***"
  end
end
