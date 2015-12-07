require 'YAML'

class Literal
  attr_reader :literal_hash

  def initialize(filename:, lang:)
    @literal_hash = YAML.load_file(filename)[lang]
  end

  def get_length(path)
    keys = path.split('.')
    last_hash = @literal_hash
    keys.slice(0...-1).each do |key|
      last_hash = last_hash[key]
    end
    last_hash[keys.last].length
  end

end
