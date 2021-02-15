module QuestionsHelper
  def question_header
    if @question.new_record?
      "Create new question in test \"#{@test.title}\""
    else
      "Edit question in test \"#{@question.test.title}\""
    end
  end
end
