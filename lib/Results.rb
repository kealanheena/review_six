class Results

  def format_grades(grades)
    grades_array = grades.split(", ")
    if grades_array.include?('Green')
      green_grades = grade_counter(grades_array, "Green")
      result = "Green: #{green_grades}"
    end
    if grades_array.include?('Amber')
      amber_grades = grade_counter(grades_array, "Amber")
      if result
        result = result + "\nAmber: #{amber_grades}"
      else
        result = "Amber: #{amber_grades}"
      end
    end
    if grades_array.include?('Red')
      red_grades = grade_counter(grades_array, "Red")
      if result
        result = result + "\nRed: #{red_grades}"
      else
        result = "Red: #{red_grades}"
      end
    end

    if !grades_array.include?('Green') && !grades_array.include?('Amber') && !grades_array.include?('Red')
      result = "Uncounted: #{grades_array.length}"
    end

    result
  end

  private

  def grade_counter(arr, grade)
    arr.count(grade)
  end

end