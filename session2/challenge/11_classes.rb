# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.
#
class BeerSong

def initialize (numberofbottles)
 numberofbottles = 0 if numberofbottles < 0
 numberofbottles = 99 if numberofbottles > 99
	@num = numberofbottles
end

def print_song

	@num.times {|i|
	       puts ""	
		puts "#{numbers_to_words (@num-i)} bottle#{"s" if (@num-i) !=1} of beer on the wall,"
	      	puts "#{numbers_to_words (@num-i)} bottle#{"s" if (@num-i) !=1} of beer,"
		puts "You take one down and pass it around,"
		puts "#{numbers_to_words (@num-i-1)} bottle#{"s" if (@num-i-1) !=1} of beer on the wall."
		puts ""
	}	


end	

def numbers_to_words num
	return "zero" if num == 0
       	return "eleven" if num == 11
	return "twelve" if num == 12	
	num_array = num.to_s.split("").reverse
	words = num_array.map {|x|
		case x
		when "1" then "one"
		when "2" then "two"
		when "3" then "three"
		when "4" then "four"
		when "5" then "five"
		when "6" then "six"
		when "7" then "seven"
		when "8" then "eight"
		when "9" then "nine"
		when "0" then ""
		end
	}
	words[1] << "ty" if words[1] != nil
	if words[1] == "onety" then
	       	words[1] = words[0] == "" ? "ten" : "teen"
	end	
	
	words.delete("")
	words = words[1] == "teen" ? words.join	: words.reverse.join("-")
	words = words.sub("twoty","twenty").sub("threet","thirt").sub("fivet", "fift").sub("eightt", "eight")
	words.capitalize!

end

end
beers = BeerSong.new(20)
beers.print_song
