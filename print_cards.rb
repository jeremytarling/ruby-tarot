# just print out all the cards that were read in from the CSV file

#ruby 1.9
#require_relative 'csv_reader'
require File.join(File.dirname(__FILE__), 'csv_reader')

reader = CsvReader.new

ARGV.each do |csv_file_name|
	STDERR.puts "processing #{csv_file_name}"
	reader.read_in_csv_data(csv_file_name)
end

reader.print_out_data
