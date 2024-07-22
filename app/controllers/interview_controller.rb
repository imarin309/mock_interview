# frozen_string_literal: true

class InterviewController < ApplicationController
  before_action :set_question_hash, only: %i[submit end]

  def index; end

  def submit
    @textbox_value = params[:textbox]
    @source_view = params[:source_view]
    @question_hash[@source_view] = @textbox_value
    save_question_hash

    case @source_view # TODO: 綺麗に書く、ロジックを移動させる
    when 'introduction'
      link_to_url = '/interview/interview_work'
    when 'work'
      link_to_url = '/interview/interview_personal'
    when 'personal'
      link_to_url = '/interview/interview_communication'
    when 'communication'
      link_to_url = '/interview/interview_engineer'
    when 'engineer'
      link_to_url = '/interview/interview_career'
    when 'career'
      link_to_url = '/interview/end'
    else
      Rails.logger.debug('TODO: 例外処理を追加')
    end
    redirect_to link_to_url
  end

  def interview_introduction
    @question = view_context.extract_question_introduction
    @source_view = 'introduction'
  end

  def interview_work
    @question = view_context.extract_question_work
    @source_view = 'work'
  end

  def interview_personal
    @question = view_context.extract_question_personal
    @source_view = 'personal'
  end

  def interview_communication
    @question = view_context.extract_question_communication
    @source_view = 'communication'
  end

  def interview_engineer
    @question = view_context.extract_question_engineer
    @source_view = 'engineer'
  end

  def interview_career
    @question = view_context.extract_question_career
    @source_view = 'career'
  end

  def end
    Rails.logger.debug(@question_hash)
    @aaa = @question_hash['introduction']
  end

  private

  def set_question_hash
    @question_hash = session[:question_hash] || { default_key: 'default_value' }
  end

  def save_question_hash
    session[:question_hash] = @question_hash
  end
end
