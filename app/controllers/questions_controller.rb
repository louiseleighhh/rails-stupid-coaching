class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @message = "I am going to work"
    @respond1 = "Great!"
    @respond2 = "Silly question, get dressed and go to work!"
    @respond3 = "I don't care, get dressed and go to work!"
    @respond = nil
    if @question == @message
      @respond = @respond1
    elsif @question.include?"?"
      @respond = @respond2
    else
      @respond = @respond3
    end
  end
end
