class Results
  def format_grades(grades)
    grades_array = grades.split(",")
    if grades_array.include?('Green')
      "Green: #{grades.split(",").length}"
    elsif grades_array.include?('Amber')
      "Amber: #{grades.split(",").length}"
    else
      "Red: #{grades.split(",").length}"
    end
  end
end