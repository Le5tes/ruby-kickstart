# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
	return_string = ""
	self.scan(/(.)(.)/){|x,y| return_string << y}
	return_string
  end
end
