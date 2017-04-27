module CVDataHelper
  def cv_pdf
    @items['**/cv.tex']
  end

  def education_item
    @items['**/education.md']
  end

  def skills_item
    @items['**/skills.md']
  end

  def experience_fields
    @items.find_all('/cv/experience/**/*')
          .map { |e| File.basename(File.dirname(e.identifier.to_s)) }
          .uniq
  end

  def experiences(field)
    @items.find_all("/cv/experience/#{field}/*")
  end

  # Group the skills so they look decent in LaTeX
  def group_skills(input)
    groups = []

    char_count = 0
    until input.empty?
      tmp = input.take_while do |e|
        char_count += e.size
        # 35 characters seems to be the limit, sort of
        condition = char_count < 35
        # Padding of textbullets
        char_count += 3
        condition
      end

      groups << tmp
      input = input.drop(tmp.size)
      # Reset for next iteration
      char_count = 0
    end

    groups.map { |e| e.flat_map { |x| [x, ' \textbullet{} '] }.tap(&:pop) }
  end
end
