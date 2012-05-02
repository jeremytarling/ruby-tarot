# read in a csv text file of card names
# 
require 'csv'
# ruby 1.9
#require_relative 'card'
require File.join(File.dirname(__FILE__), 'card')


class CsvReader

	def initialize
		@deck = []
	end

	def read_in_csv_data(csv_file_name)
		CSV.foreach(csv_file_name, headers: true) do |row|
			@deck << Card.new(row["card name"])
		end
	end

	def print_out_data
		@deck.each{|card| puts card}
	end

end
