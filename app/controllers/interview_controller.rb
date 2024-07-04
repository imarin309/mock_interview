# frozen_string_literal: true

class InterviewController < ApplicationController
  def index; end

  def interview_introduction
    @question = view_context.extract_question_introduction
  end

  def interview_work
    @question = view_context.extract_question_work
  end

  def interview_personal
    @question = view_context.extract_question_personal
  end

  def interview_communication
    @question = view_context.extract_question_communication
  end

  def interview_engineer
    @question = view_context.extract_question_engineer
  end

  def interview_career
    @question = view_context.extract_question_career
  end

  def end; end
end
