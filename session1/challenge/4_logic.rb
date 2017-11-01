# A grad student at a local university thinks he has discovered a formula to
# predict what kind of grades a person will get. He says if you own less than 
# 10 books, you will get a "D". If you own 10 to 20 books, you will get a "C", 
# and if you own more than 20 books, you will get a "B".
# He further hypothesizes that if you actually read your books, then you will
# get a full letter grade higher in every case.
#
# grade(4,  false)  # => "D"
# grade(4,  true)   # => "C"
# grade(15, true)   # => "B"

def grade(num_books, reads_books)
	grade= case num_books
	when < 10
	       	4
	when > 20
		2
	else 
		3
	end

 	grade = grade -1 if reads_books

	case grade
	when 4
		"D"
	when 3
		"C"
	when 2
		"B"
	when 1
		"A"
	end


end
