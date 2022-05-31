class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @search = params[:question]

    if @search == 'I am going to work'
      @result = 'Great'
    elsif @search.end_with?('?')
      @result = 'Silly question, get dressed and go to work!.'
    else
      @result = "I don't care, get dressed and go to work!"
    end
  end
end
