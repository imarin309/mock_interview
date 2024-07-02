# frozen_string_literal: true

class InterviewController < ApplicationController
  def index; end

  def interview
    @question = view_context.extract_question_introduction
  end
end
