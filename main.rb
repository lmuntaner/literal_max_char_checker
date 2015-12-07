require 'pry'
require_relative './input_parsers/max_char_parser.rb'
require_relative './literals_manager.rb'

literals_folder_path = ARGV.first
literals_manager = LiteralsManager.new(literals_folder_path)
max_chars = MaxCharsParser.new.get_info('kermit_literals_max_chars.csv')

literals_manager.check_literals_max(max_chars)

puts 'The end!'
