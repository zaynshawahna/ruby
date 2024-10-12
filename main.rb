require_relative 'fetcher'
require_relative 'reader'
require_relative 'viewer'
require_relative 'interface'

directory_path = '/home/zayn/GSG/rubyGSG/data'  
#terminal_width = `tput cols`.to_i 
# puts terminal_width
fetcher = Fetcher.new(directory_path)


loop do
  csv_files = fetcher.fetch_csv_files
  
  csv_files <<"quit" 

  if csv_files.empty?
    puts "No CSV files found in the specified directory."
    exit
  end

  prompt = Interface.new(csv_files)
  selected_file = prompt.choose_file

  
  if selected_file == "quit"
    puts "Exiting the program."
    exit
  end

  
  csv_reader = Reader.new(selected_file)
  csv_data = csv_reader.read_csv

  
  if csv_data.empty?
    puts "The selected CSV file is empty."
    next  
  end

  
  csv_viewer = Viewer.new(csv_data)
  csv_viewer.display
end
