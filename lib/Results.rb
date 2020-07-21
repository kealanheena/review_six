class Results

  def initialize
    @scores = ["Green", "Amber", "Red"]
  end

  def format_grades(results)
    @results = results.split(", ")

    @scores.each { |score| 
      add_results(score)
    }

    if !@results.include?('Green') && !@results.include?('Amber') && !@results.include?('Red')
      @formated_grades = "Uncounted: #{@results.length}"
    end

    @formated_grades
  end

  private

  def grade_counter(colour)
    @results.count(colour)
  end

  def add_results(colour)
    if @results.include?(colour)
      grades = grade_counter(colour)
      @formated_grades = @formated_grades + "\n#{colour}: #{grades}" if @formated_grades
      @formated_grades = "#{colour}: #{grades}" if !@formated_grades
    end
  end

end