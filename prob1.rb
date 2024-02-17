require 'csv'

csv_file = "data.csv"

data = []
CSV.foreach(csv_file, headers: true) do |row|
    data << row.to_h
end

puts data
