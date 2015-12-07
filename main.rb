require 'pry'
require_relative './input_parsers/max_char_parser.rb'
require_relative './literals_manager.rb'

literals_folder_path = ARGV.first
max_chars_file = ARGV[1]
literals_manager = LiteralsManager.new(literals_folder_path)
max_chars = MaxCharsParser.new.get_info(max_chars_file)

literals_manager.check_literals_max(max_chars)

puts 'The end!'
