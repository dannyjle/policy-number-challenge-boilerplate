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
	
	#Make global varible so it can be reached anywhere and we will want to split the file at the new line mark.
	@file_info = File.read("../spec/fixtures/sample.txt").lines
	#The 'self' points to the class or module that's in the process of being defined.
	def self.policy_converter(policy_numbers)
		#Open and read from a file one line at a time (for bigger files.)
		File.foreach("../spec/fixtures/sample.txt") { |line| puts line }
		# Each_slice the lines and define the number of lines by 4 then turn it into an array where we will then map into the array twice to get our rows.
		# Using the Scan method we can set it to 3 collums.
		split_line = @file_info.each_slice(4).map do | row_of_numbers |
      converted = row_of_numbers.map { | string | string.scan(/.{1,3}/) }
			# Transpose this will convert any arguments to arrays, then merge elements of self with corresponding elements from each argument.
			.transpose
			# You will want it to match the hash format of your NUMS so they can be matched and converted later. We will use the map method again to achieve this.
			# After mapping you will want to (&:join) them together to form a hashed number in the format of NUMBERS. 
      .map(&:join)
			# Map again to match the NUMS pipe/underscores.
			.map { | number | NUMS[number]}
			# Join it together to get all the numbers together and then convert string to integer.
			.join.to_i
		end
	end
end

#Displays the program on the console
p PolicyOcr.policy_converter(@file_info)
