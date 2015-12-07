require 'pry'
require_relative './input_parsers/max_char_parser.rb'
require_relative './literal.rb'

literal = Literal.new(filename: 'literals/de-AT_mobile.yml', lang: 'de')
max_chars = MaxCharsParser.new.get_info('kermit_literals_max_chars.csv')

def check_maxs(literal, max_chars)
  max_chars.each do |max_char_info|
    max_char = max_char_info.last
    path = max_char_info.first
    # puts "checking #{path}"
    literal_length = literal.get_length(path)
    if literal_length > max_char
      puts "Literal #{path} has #{literal_length} characters vs a max of #{max_char}"
    end
  end
end

check_maxs(literal, max_chars)

puts 'The end!'
