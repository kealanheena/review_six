class Results
  def format_grades(grades)
    if grades.split(",").include?('Green')
      "Green: #{grades.split(",").length}"
    else
      "Amber: #{grades.split(",").length}"
    end
  end
end