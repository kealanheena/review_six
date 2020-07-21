class Results

  def format_grades(grades)
    grades_array = grades.split(", ")
    if grades_array.include?('Green')
      green_grades = grade_counter(grades_array, "Green")
      @result = "Green: #{green_grades}"
    end
    add_results(grades_array, "Amber")
    add_results(grades_array, "Red")

    if !grades_array.include?('Green') && !grades_array.include?('Amber') && !grades_array.include?('Red')
      @result = "Uncounted: #{grades_array.length}"
    end

    @result
  end

  private

  def grade_counter(array, colour)
    array.count(colour)
  end

  def add_results(array, colour)
    if array.include?(colour)
      grades = grade_counter(array, colour)
      @result = @result + "\n#{colour}: #{grades}" if @result
      @result = "#{colour}: #{grades}" if !@result
    end
  end

end