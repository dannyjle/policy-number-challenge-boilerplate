module PolicyOcr
  #Create a hash of the numbers in pipe/underscore form.
	Nums = {
  ' _ | ||_|   ' => '0',
  '     |  |   ' => '1',
  ' _  _||_    ' => '2',
  ' _  _| _|   ' => '3',
  '   |_|  |   ' => '4',
  ' _ |_  _|   ' => '5',
  ' _ |_ |_|   ' => '6',
  ' _   |  |   ' => '7',
  ' _ |_||_|   ' => '8',
  ' _ |_| _|   ' => '9' }.freeze 
	#Use .freeze on NUMBERS which will prevent the NUMBERS from being modifie.
	
	#The 'self' points to the class or module that's in the process of being defined.
	def self.policy_converter(policy_numbers)
		#Open and read from a file one line at a time (for bigger files.)
		file_info = File.read("policies").split
		file_info.foreach("policy_numbers") { |line| puts line }
		#Split the lines using the split method and define the number of lines by 4
		split_line = file_info.split("\n").each_slice(4)
		# Map each of the split lines
		digits = split_line.map{ |new_lines| new_lines }
	end

end


