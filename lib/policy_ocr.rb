module PolicyOcr
  #Create a hash of the numbers in pipe/underscore form.
	NUMS = {
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
	#Use .freeze on NUMBERS which will prevent the NUMBERS from being modified.
	
	#Make global varible so it can be reached anywhere
	@file_info = File.read("../spec/fixtures/sample.txt").split

	#The 'self' points to the class or module that's in the process of being defined.
	def self.policy_converter(policy_numbers)
		#Open and read from a file one line at a time (for bigger files.)
		File.foreach("../spec/fixtures/sample.txt") { |line| puts line }
		# Each_slice the lines and define the number of lines by 4 then turn into an array where we will then map into the array twice to get our rows.
		# Using the Scan method we can set 
		split_line = @file_info.each_slice(4).to_a.map do | row_of_numbers |
      row_of_numbers.map { | string | string.scan(/.../) }
      # .transpose
      # .map(&:join)
		end
	
	end

end

#Displays the program on the console
p PolicyOcr.policy_converter(@file_info)
