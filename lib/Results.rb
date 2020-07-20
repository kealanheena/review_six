class Results
  def format_grades(grades)
    result = ''
    grades_array = grades.split(", ")
    if grades_array.include?('Green')
      grades_num = grade_counter(grades_array, "Green")
      result = "Green: #{grades_num}"
    end
    if grades_array.include?('Amber')
      grades_num = grade_counter(grades_array, "Amber")
      if result != ''
        result = result + "\nAmber: #{grades_num}"
      else
        result = "Amber: #{grades_num}"
      end
    end
    if grades_array.include?('Red')
      result = "Red: #{grades_array.length}"
    elsif !grades_array.include?('Green') && !grades_array.include?('Amber')
      result = "Uncounted: #{grades_array.length}"
    end

    result
  end

  private

  def grade_counter(arr, grade)
    arr.count(grade)
  end

end