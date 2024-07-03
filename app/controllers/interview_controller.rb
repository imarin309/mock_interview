# frozen_string_literal: true

class InterviewController < ApplicationController
  def index; end

  def interview_introduction
    @question = view_context.extract_question_introduction
  end
end
