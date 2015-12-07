require 'YAML'

class Literal
  attr_reader :lang

  def initialize(filename:)
    temp_hash = YAML.load_file(filename)
    @lang = temp_hash.keys.first
    @literal_hash = temp_hash[lang]
  end

  def get_length(path)
    keys = path.split('.')
    last_hash = @literal_hash
    keys.slice(0...-1).each do |key|
      return unless last_hash[key]
      last_hash = last_hash[key]
    end
    last_hash[keys.last].length
  end

end
