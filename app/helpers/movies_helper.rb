module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end

  def should_hilite(column_name)
  	if column_name.eql?(@column_to_sort)
  		"hilite"
  	else
  		""
  	end
  end
end
