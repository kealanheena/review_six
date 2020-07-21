class Results

  def initialize
    @scores = ["Green", "Amber", "Red", "Uncounted"]
  end

  def format_grades(results)
    @results = results.split(", ")
    @scores.each { |score| 
      add_results(score)
    }
    @formated_grades
  end

  private

  def grade_counter(colour)
    @results.count(colour)
  end

  def add_results(colour)
    if @results.include?(colour)
      grades = grade_counter(colour)
      add_score(colour, grades)
    end
  end

  def add_score(colour, grades)
    @formated_grades = @formated_grades + "\n#{colour}: #{grades}" if @formated_grades
    @formated_grades = "#{colour}: #{grades}" if !@formated_grades
  end

end