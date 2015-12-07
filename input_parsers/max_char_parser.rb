require 'csv'

class MaxCharsParser

  def get_info(filename)
    headers = true
    max_literals = []
    CSV.foreach(filename) do |row|
      if headers
        headers = false
      else
        max_literals << parse_row(row)
      end
    end

    max_literals
  end

  def parse_row(row)
    [row.first, row.last.to_i]
  end
end
