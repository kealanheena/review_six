class Results
  def format_grades(grades)
    grades_array = grades.split(",")
    if grades_array.include?('Green')
      "Green: #{grades_array.length}"
    elsif grades_array.include?('Amber')
      "Amber: #{grades_array.length}"
    elsif grades_array.include?('Red')
      "Red: #{grades_array.length}"
    else
      "Uncounted: #{grades_array.length}"
    end
  end
end