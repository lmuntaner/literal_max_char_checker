require_relative './literal.rb'

class LiteralsManager

  def initialize(folder_path)
    literal_file_paths = Dir.entries(folder_path).map do |literal_filename|
      next if literal_filename == '.' || literal_filename == '..'
      "#{folder_path}/#{literal_filename}"
    end.compact
    @literals = literal_file_paths.map { |literal_path| Literal.new(filename: literal_path) }
  end

  def check_literals_max(max_chars)
    @literals.each { |literal| check_maxs(literal, max_chars) }
  end

  def check_maxs(literal, max_chars)
    max_chars.each do |max_char_info|
      max_char = max_char_info.last
      path = max_char_info.first
      literal_length = literal.get_length(path)
      next if literal_length.nil?
      if literal_length > max_char
        puts "Literal #{literal.lang}.#{path} has #{literal_length} characters vs a max of #{max_char}"
      end
    end
  end
end
