# frozen_string_literal: true

class InterviewController < ApplicationController
  before_action :set_var

  def index; end

  def submit
    @textbox_value = params[:textbox]
    @source_view = params[:source_view]
    @question_hash[@question] = @textbox_value
    save_question_hash

    case @source_view # TODO: 綺麗に書く、ロジックを移動させる
    when 'introduction'
      link_to_url = '/interview/interview_work'
    when 'work'
      link_to_url = '/interview/interview_personal'
    when 'personal'
      link_to_url = '/interview/interview_communication'
    when 'communication'
      link_to_url = '/interview/interview_career'
    when 'career'
      link_to_url = '/interview/end'
    else
      Rails.logger.debug('TODO: 例外処理を追加')
    end
    redirect_to link_to_url
  end

  def interview_introduction
    @question_hash = {}
    @question = view_context.extract_question_introduction
    @source_view = 'introduction'
    save_question
    save_question_hash
  end

  def interview_work
    @question = view_context.extract_question_work
    @source_view = 'work'
    save_question
  end

  def interview_personal
    @question = view_context.extract_question_personal
    @source_view = 'personal'
  end

  def interview_communication
    @question = view_context.extract_question_communication
    @source_view = 'communication'
    save_question
  end

  def interview_career
    @question = view_context.extract_question_career
    @source_view = 'career'
    save_question
  end

  def end; end

  private

  def set_var
    @question_hash = session[:question_hash]
    @question = session[:question]
  end

  def save_question_hash
    session[:question_hash] = @question_hash
  end

  def save_question
    session[:question] = @question
  end
end
