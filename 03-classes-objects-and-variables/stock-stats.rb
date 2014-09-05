require_relative 'csv-reader'

reader = CsvReader.new

ARGV.each do |csv_file_name|
  STDERR.puts "Processing #{csv_file_name}"
  reader.read_in_csv_file csv_file_name
end

puts "Total value = #{reader.total_value_in_stock}"
